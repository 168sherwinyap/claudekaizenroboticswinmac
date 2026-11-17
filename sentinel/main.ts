// Sonar Sentinel - micro:bit v2 + RobotBit dual-servo radar
//
// S1 (PCA9685 channel 8) pans an HC-SR04 through a 20..160 degree sweep.
// S2 (PCA9685 channel 9) is a guard arm: open at rest, locked when something
// stays inside the keep-out distance for over one full sweep.
//
// USB serial protocol (newline delimited, ASCII):
//   board ->  A:<deg>,D:<cm>    one line per sweep step (D:0 = no echo)
//             N:<cm>            nearest valid distance of that pass
//             ALARM:<0|1>       on alarm edges only
//             K:<cm>            keep-out echo
//             ACK:<command>     echo of every command received
//             SYS:READY,PCA=OK|ERR, SYS:SWEEP|PAUSED|PARK|TEST
//   browser -> t:<cm>  s  p  c  w  i  d (raw echo diagnostic)
//
// HC-SR04: TRIG = P1, ECHO = P2 (5 V through a 1k/2k divider). VCC on the 5 V
// rail next to the servo ports. RobotBit S1..S8 are PCA9685 outputs on I2C
// 0x40 (P19/P20), not micro:bit pins, so they never conflict with P1/P2.
//
// Everything that touches I2C or the display runs in one fiber (basic.forever):
// the serial handler and buttons only set globals. That keeps the two servos
// from ever fighting over the bus and keeps command handling from being lost.

const PCA = 0x40
const MODE1 = 0x00
const PRESCALE = 0xFE
const CH_S1 = 0x06 + 4 * 8          // S1 = channel 8, pan
const CH_S2 = 0x06 + 4 * 9          // S2 = channel 9, guard arm

const TRIG = DigitalPin.P1
const ECHO = DigitalPin.P2
const ECHO_TIMEOUT_US = 30000       // 30 ms -> 0 if no echo

const SWEEP_MIN = 20
const SWEEP_MAX = 160
const SWEEP_STEP = 5
const SETTLE_MS = 45                // let the horn settle before ranging
const HOME_DEG = 90

const ARM_OPEN = 20                 // off the mechanical limits, no buzz
const ARM_LOCKED = 160

const KEEP_OUT_DEFAULT = 30
const KEEP_OUT_MIN = 8
const KEEP_OUT_MAX = 80
const ALARM_HOLD_MS = 2600          // > one full sweep: a hand anywhere stays latched
const MIN_VALID_CM = 4
const MAX_VALID_CM = 200

const MODE_SWEEP = 0
const MODE_PAUSED = 1
const MODE_PARK = 2
const MODE_TEST = 3

let mode = MODE_PAUSED
let pendingMode = -1
let sweepDeg = SWEEP_MIN
let sweepDir = 1
let passStart = true
let keepOutCm = KEEP_OUT_DEFAULT
let armLocked = false
let lastThreat = 0
let pcaOk = false
let lastDispKey = ""
let nearestCm = 0
let nearestAt = 0
let sweepMinCm = 0

function line(s: string) {
    serial.writeLine(s)
}

// Includes the live alarm state so a browser that connects mid-alarm syncs at once.
function readyLine() {
    return "SYS:READY,PCA=" + (pcaOk ? "OK" : "ERR") + ",ALARM=" + (armLocked ? "1" : "0")
}

function pcaWrite(bytes: number[]) {
    let buf = Buffer.create(bytes.length)
    for (let i = 0; i < bytes.length; i++) {
        buf[i] = bytes[i]
    }
    // Swallowed so the sensor stream and radar keep working with the RobotBit off.
    try {
        pins.i2cWriteBuffer(PCA, buf, false)
    } catch (e) {
    }
}

function pcaRead8(reg: number): number {
    try {
        pins.i2cWriteNumber(PCA, reg, NumberFormat.UInt8BE, true)
        return pins.i2cReadNumber(PCA, NumberFormat.UInt8BE, false)
    } catch (e) {
        return -1
    }
}

// The prescale is volatile: a RobotBit power cycle resets it, so re-init before
// each pass. Returns true only if the chip answers with the prescale we wrote,
// which is also how the browser learns the servo rail is actually powered.
function pcaInit(): boolean {
    pcaWrite([MODE1, 0x00])
    pcaWrite([MODE1, 0x10])         // sleep before writing prescale
    basic.pause(2)
    pcaWrite([PRESCALE, 121])       // 50 Hz at 25 MHz
    pcaWrite([MODE1, 0x00])         // wake
    basic.pause(2)
    pcaWrite([MODE1, 0xA1])         // restart + auto-increment
    pcaOk = pcaRead8(PRESCALE) == 121
    return pcaOk
}

function writeChannel(base: number, deg: number) {
    if (deg < 0) deg = 0
    if (deg > 180) deg = 180
    let pulse = 600 + deg * 10                  // 600..2400 us
    let off = Math.idiv(pulse * 4096 + 10000, 20000)
    pcaWrite([base, 0, 0, off & 0xFF, (off >> 8) & 0xFF])
}

function movePan(deg: number) {
    writeChannel(CH_S1, deg)
}

function moveArm(deg: number) {
    writeChannel(CH_S2, deg)
}

function readEchoUs(timeoutUs: number): number {
    pins.digitalWritePin(TRIG, 0)
    control.waitMicros(2)
    pins.digitalWritePin(TRIG, 1)
    control.waitMicros(10)
    pins.digitalWritePin(TRIG, 0)
    return pins.pulseIn(ECHO, PulseValue.High, timeoutUs)
}

function readDistanceCm(): number {
    let us = readEchoUs(ECHO_TIMEOUT_US)
    return Math.idiv(us, 58)                    // 58 us per cm round trip
}

function setAlarm(v: boolean) {
    if (v == armLocked) return
    armLocked = v
    moveArm(v ? ARM_LOCKED : ARM_OPEN)
    lastDispKey = ""
    line(v ? "ALARM:1" : "ALARM:0")
}

function setMode(m: number) {
    mode = m
    if (m == MODE_SWEEP) {
        line("SYS:SWEEP")
    } else if (m == MODE_PAUSED) {
        line("SYS:PAUSED")
    } else if (m == MODE_PARK) {
        line("SYS:PARK")
        setAlarm(false)
        movePan(HOME_DEG)
        moveArm(ARM_OPEN)
        sweepDeg = SWEEP_MIN
        sweepDir = 1
        passStart = true
    } else if (m == MODE_TEST) {
        line("SYS:TEST")
    }
}

function ingest(cm: number) {
    if (cm < MIN_VALID_CM || cm > MAX_VALID_CM) return
    let now = control.millis()
    if (nearestCm == 0 || cm < nearestCm || now - nearestAt > 1200) {
        nearestCm = cm
    }
    nearestAt = now
    if (sweepMinCm == 0 || cm < sweepMinCm) sweepMinCm = cm
    if (cm < keepOutCm) {
        lastThreat = now
        if (!armLocked) setAlarm(true)
    }
}

function endSweep() {
    line("N:" + sweepMinCm)
    sweepMinCm = 0
    passStart = true
}

function sweepStep() {
    if (passStart) {
        passStart = false
        pcaInit()
        moveArm(armLocked ? ARM_LOCKED : ARM_OPEN)
    }
    movePan(sweepDeg)
    basic.pause(SETTLE_MS)
    if (mode != MODE_SWEEP) return
    let cm = readDistanceCm()
    line("A:" + sweepDeg + ",D:" + cm)
    ingest(cm)
    let next = sweepDeg + sweepDir * SWEEP_STEP
    if (next > SWEEP_MAX) {
        endSweep()
        sweepDir = -1
        next = sweepDeg - SWEEP_STEP
    } else if (next < SWEEP_MIN) {
        endSweep()
        sweepDir = 1
        next = sweepDeg + SWEEP_STEP
    }
    sweepDeg = next
}

function runWiggle() {
    setMode(MODE_TEST)
    for (let i = 0; i < 2; i++) {
        movePan(40)
        basic.pause(220)
        movePan(140)
        basic.pause(220)
        moveArm(ARM_OPEN)
        basic.pause(200)
        moveArm(ARM_LOCKED)
        basic.pause(200)
    }
    movePan(HOME_DEG)
    moveArm(armLocked ? ARM_LOCKED : ARM_OPEN)
    basic.pause(150)
    setMode(MODE_SWEEP)
    sweepDeg = SWEEP_MIN
    sweepDir = 1
    passStart = true
}

function updateDisplay() {
    let now = control.millis()
    if (nearestAt > 0 && now - nearestAt > 1500) nearestCm = 0
    let key = "bar0"
    if (armLocked) {
        key = "alarm"
    } else if (nearestCm > 0) {
        let near = 100 - nearestCm
        if (near < 0) near = 0
        let lvl = Math.idiv(near * 5, 96)       // 4 cm -> 5, 100 cm -> 0
        if (lvl < 1) lvl = 1
        if (lvl > 5) lvl = 5
        key = "bar" + lvl
    }
    if (key == lastDispKey) return
    lastDispKey = key
    basic.clearScreen()
    if (key == "alarm") {
        for (let i = 0; i < 5; i++) {
            led.plot(i, i)
            led.plot(4 - i, i)
        }
    } else if (key == "bar0") {
        led.plot(2, 2)
    } else {
        let lvl = parseInt(key.substr(3))
        for (let x = 0; x < lvl; x++) {
            for (let y = 0; y < 5; y++) {
                led.plot(x, y)
            }
        }
    }
}

function tickGuard() {
    if (armLocked && control.millis() - lastThreat > ALARM_HOLD_MS) {
        setAlarm(false)
    }
}

serial.onDataReceived(serial.delimiters(Delimiters.NewLine), function () {
    let msg = serial.readUntil(serial.delimiters(Delimiters.NewLine)).trim()
    if (msg.length == 0) return
    line("ACK:" + msg)
    let c = msg.charAt(0)
    if (c == "s" || c == "S") {
        pendingMode = MODE_SWEEP
    } else if (c == "p" || c == "P") {
        pendingMode = MODE_PAUSED
    } else if (c == "c" || c == "C") {
        pendingMode = MODE_PARK
    } else if (c == "w" || c == "W") {
        pendingMode = MODE_TEST
    } else if (c == "i" || c == "I") {
        line(readyLine())
    } else if (c == "d" || c == "D") {
        // Diagnostic: a live HC-SR04 holds ECHO high ~38 ms even with no
        // target, while a dead/miswired one reads 0. No target gives ~38000.
        line("DIAG:US=" + readEchoUs(100000))
    } else if (c == "t" || c == "T") {
        let v = parseInt(msg.substr(2))
        if (v >= KEEP_OUT_MIN && v <= KEEP_OUT_MAX) {
            keepOutCm = v
            line("K:" + keepOutCm)
        }
    }
})

input.onButtonPressed(Button.A, function () {
    pendingMode = (mode == MODE_SWEEP) ? MODE_PAUSED : MODE_SWEEP
})

input.onButtonPressed(Button.B, function () {
    pendingMode = MODE_TEST
})

// Boot: prove the display, initialise the servo chip once, report, then sweep.
basic.showIcon(IconNames.Target)
basic.pause(300)
pcaInit()
moveArm(ARM_OPEN)
line(readyLine())
basic.pause(150)
setMode(MODE_SWEEP)
passStart = true

basic.forever(function () {
    if (pendingMode >= 0) {
        let m = pendingMode
        pendingMode = -1
        setMode(m)
    }
    if (mode == MODE_SWEEP) {
        sweepStep()
    } else if (mode == MODE_TEST) {
        runWiggle()
    } else {
        basic.pause(25)
    }
    tickGuard()
    updateDisplay()
})
