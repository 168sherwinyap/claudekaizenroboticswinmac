// HandLab - micro:bit v2 sensor dashboard + 5-servo hand (RobotBit)
//
// Streams every v2 sensor to a browser over USB serial and applies servo angle
// commands from the same link. S1..S5 are PCA9685 channels 8..12 (0x26..0x36),
// driven as five fingers: S1=thumb, S2=index, S3=middle, S4=ring, S5=pinky.
//
// Serial protocol (newline delimited):
//   board ->  S T=<c> L=<0-255> MIC=<0-255> AX/AY/AZ=<mg> HX/HY/HZ=<uT> D=<cm>
//             PCA=OK|ERR (on the i command)   ACK:<cmd>   SERVO <n>=<deg>
//   browser -> s1:<deg> .. s5:<deg>   home   i
//
// IMPORTANT: this uses input.magneticForce() for the magnetometer. Do NOT call
// input.compassHeading() or input.calibrateCompass() here — they hang the boot on
// this board (verified). The browser computes heading from the raw HX/HY/HZ.
//
// HC-SR04: TRIG=P1, ECHO=P2 (5 V rail through a 1k/2k divider). RobotBit servo
// ports are PCA9685 outputs on I2C 0x40 (P19/P20), not micro:bit pins.
//
// One fiber (basic.forever) owns ALL I2C and the display; the serial handler and
// buttons only set globals. Servo moves are staggered one channel per tick so five
// servos never snap off one rail at once.

const PCA = 0x40
const MODE1 = 0x00
const PRESCALE = 0xFE
const CH_BASE = [0x06 + 4 * 8, 0x06 + 4 * 9, 0x06 + 4 * 10, 0x06 + 4 * 11, 0x06 + 4 * 12]

const TRIG = DigitalPin.P1
const ECHO = DigitalPin.P2
const ECHO_TIMEOUT_US = 30000

const ANGLE_MIN = 0
const ANGLE_MAX = 180
const HOME = 0
const TELEMETRY_MS = 100

let targets: number[] = [HOME, HOME, HOME, HOME, HOME]
let dirty: boolean[] = [false, false, false, false, false]
let pcaOk = false
let lastTelemetry = 0
let dispMode = 0
let lastDispKey = ""

function line(s: string) {
    serial.writeLine(s)
}

function pcaWrite(bytes: number[]) {
    let buf = Buffer.create(bytes.length)
    for (let i = 0; i < bytes.length; i++) {
        buf[i] = bytes[i]
    }
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

function pcaInit(): boolean {
    pcaWrite([MODE1, 0x00])
    pcaWrite([MODE1, 0x10])         // sleep before prescale
    basic.pause(2)
    pcaWrite([PRESCALE, 121])       // 50 Hz at 25 MHz
    pcaWrite([MODE1, 0x00])         // wake
    basic.pause(2)
    pcaWrite([MODE1, 0xA1])         // restart + auto-increment
    pcaOk = pcaRead8(PRESCALE) == 121
    return pcaOk
}

function writeChannel(idx: number, deg: number) {
    if (deg < 0) deg = 0
    if (deg > 180) deg = 180
    let pulse = 600 + deg * 10
    let off = Math.idiv(pulse * 4096 + 10000, 20000)
    pcaWrite([CH_BASE[idx], 0, 0, off & 0xFF, (off >> 8) & 0xFF])
}

function readDistanceCm(): number {
    pins.digitalWritePin(TRIG, 0)
    control.waitMicros(2)
    pins.digitalWritePin(TRIG, 1)
    control.waitMicros(10)
    pins.digitalWritePin(TRIG, 0)
    let us = pins.pulseIn(ECHO, PulseValue.High, ECHO_TIMEOUT_US)
    return Math.idiv(us, 58)
}

function applyOneServo() {
    for (let i = 0; i < 5; i++) {
        if (dirty[i]) {
            dirty[i] = false
            writeChannel(i, targets[i])
            return
        }
    }
}

function setAngle(n: number, deg: number) {
    let d = deg
    if (d < ANGLE_MIN) d = ANGLE_MIN
    if (d > ANGLE_MAX) d = ANGLE_MAX
    targets[n - 1] = d
    dirty[n - 1] = true
    line("SERVO " + n + "=" + d)
}

function setAll(deg: number) {
    for (let n = 1; n <= 5; n++) {
        setAngle(n, deg)
    }
}

function round1(x: number): number {
    return Math.round(x * 10) / 10
}

function emitTelemetry() {
    let t = round1(input.temperature())
    let l = input.lightLevel()
    let mic = input.soundLevel()
    let ax = input.acceleration(Dimension.X)
    let ay = input.acceleration(Dimension.Y)
    let az = input.acceleration(Dimension.Z)
    let hx = input.magneticForce(Dimension.X)
    let hy = input.magneticForce(Dimension.Y)
    let hz = input.magneticForce(Dimension.Z)
    let d = readDistanceCm()
    line("S T=" + t + " L=" + l + " MIC=" + mic +
        " AX=" + ax + " AY=" + ay + " AZ=" + az +
        " HX=" + hx + " HY=" + hy + " HZ=" + hz +
        " D=" + d)
}

function magLevel(): number {
    let hx = input.magneticForce(Dimension.X)
    let hy = input.magneticForce(Dimension.Y)
    let hz = input.magneticForce(Dimension.Z)
    let mag = Math.sqrt(hx * hx + hy * hy + hz * hz)
    let lvl = Math.idiv(Math.min(150, mag) * 5, 150)
    if (lvl < 1) lvl = 1
    return lvl
}

function updateDisplay() {
    let key = ""
    if (dispMode == 0) {
        key = "snd" + Math.idiv(input.soundLevel() * 5, 256)
    } else if (dispMode == 1) {
        key = "lit" + Math.idiv(input.lightLevel() * 5, 256)
    } else if (dispMode == 2) {
        key = "mag" + magLevel()
    } else {
        let roll = input.rotation(Rotation.Roll)
        let pitch = input.rotation(Rotation.Pitch)
        let x = Math.round(2 + roll / 45)
        let y = Math.round(2 - pitch / 45)
        if (x < 0) x = 0
        if (x > 4) x = 4
        if (y < 0) y = 0
        if (y > 4) y = 4
        key = "pb" + x + "," + y
    }
    if (key == lastDispKey) return
    lastDispKey = key
    basic.clearScreen()

    if (key.charAt(0) == "s" || key.charAt(0) == "l" || key.charAt(0) == "m") {
        let lvl = parseInt(key.substr(3))
        for (let y = 0; y < lvl; y++) {
            led.plot(2, 4 - y)
        }
        return
    }
    // pitch/roll bubble
    let rest = key.substr(2)
    let comma = rest.indexOf(",")
    let x = parseInt(rest.substr(0, comma))
    let y = parseInt(rest.substr(comma + 1))
    led.plot(x, y)
}

serial.onDataReceived(serial.delimiters(Delimiters.NewLine), function () {
    let msg = serial.readUntil(serial.delimiters(Delimiters.NewLine)).trim()
    if (msg.length == 0) return
    line("ACK:" + msg)
    let c = msg.charAt(0)
    if (msg == "home") {
        setAll(HOME)
    } else if (msg == "i") {
        line("PCA=" + (pcaOk ? "OK" : "ERR"))
    } else if (c == "s" && msg.charAt(2) == ":") {
        let n = parseInt(msg.charAt(1))
        let v = parseInt(msg.substr(3))
        if (n >= 1 && n <= 5 && v >= 0 && v <= 180) {
            setAngle(n, v)
        }
    }
})

input.onButtonPressed(Button.A, function () {
    dispMode = (dispMode + 1) % 4
    lastDispKey = ""
})

input.onButtonPressed(Button.B, function () {
    setAll(HOME)
})

// Boot: init the servo chip, park all fingers at home (0°), then stream.
basic.showIcon(IconNames.Target)
basic.pause(300)
pcaInit()
for (let i = 0; i < 5; i++) writeChannel(i, HOME)
basic.pause(150)

basic.forever(function () {
    applyOneServo()
    let now = control.millis()
    if (now - lastTelemetry >= TELEMETRY_MS) {
        lastTelemetry = now
        emitTelemetry()
    }
    updateDisplay()
    basic.pause(15)
})
