// micro:bit HC-SR04 hand-distance telemetry + RobotBit S1 servo wing
//
// Streams "D:<cm>" over USB serial every ~50 ms. The browser game reads those
// lines and, when the bird is moving up, writes "f" back; on "f" the board
// flaps the S1 wing once. Button A flaps locally for a self-test with no PC.
//
// HC-SR04: TRIG = P1, ECHO = P2. Power the module from the 5 V rail and put a
// divider on ECHO before P2 (1k ECHO->P2, 2k P2->GND), because micro:bit pins
// are not 5 V tolerant. 3.3 V power is electrically safe without the divider,
// but many HC-SR04 clones read 0 or are flaky there.
//
// S1 is PCA9685 channel 8 on I2C address 0x40 (RobotBit, P19/P20), not a
// micro:bit pin. The prescale resets when the RobotBit loses power, so the
// chip is re-initialised before every move. I2C errors are swallowed so the
// sensor stream keeps working with the RobotBit off.

const PCA = 0x40
const MODE1 = 0x00
const PRESCALE = 0xFE
const CH8_ON_L = 0x06 + 4 * 8

const TRIG = DigitalPin.P1
const ECHO = DigitalPin.P2
const ECHO_TIMEOUT_US = 30000      // 30 ms -> 0 if no echo (out of range)

function pcaWrite(bytes: number[]) {
    let buf = Buffer.create(bytes.length)
    for (let i = 0; i < bytes.length; i++) {
        buf[i] = bytes[i]
    }
    // Errors are swallowed so the sensor stream keeps working with the RobotBit off.
    try {
        pins.i2cWriteBuffer(PCA, buf, false)
    } catch (e) {
    }
}

function servo(angle: number) {
    if (angle < 0) angle = 0
    if (angle > 180) angle = 180
    pcaWrite([MODE1, 0x00])
    pcaWrite([MODE1, 0x10])        // sleep - required before writing prescale
    basic.pause(2)
    pcaWrite([PRESCALE, 121])      // 50 Hz at 25 MHz
    pcaWrite([MODE1, 0x00])        // wake
    basic.pause(2)
    pcaWrite([MODE1, 0xA1])        // restart + auto-increment
    let pulse = 600 + angle * 10               // 600..2400 us
    let off = Math.idiv(pulse * 4096 + 10000, 20000)
    pcaWrite([CH8_ON_L, 0, 0, off & 0xFF, (off >> 8) & 0xFF])
}

// One wing flap, in the background so a stuck I2C bus can't block serial.
function flapWing() {
    control.inBackground(function () {
        for (let i = 0; i < 3; i++) {
            servo(130)
            basic.pause(60)
            servo(40)
            basic.pause(60)
        }
        servo(90)
    })
}

function readDistanceCm(): number {
    pins.digitalWritePin(TRIG, 0)
    control.waitMicros(2)
    pins.digitalWritePin(TRIG, 1)
    control.waitMicros(10)
    pins.digitalWritePin(TRIG, 0)
    let us = pins.pulseIn(ECHO, PulseValue.High, ECHO_TIMEOUT_US)
    return Math.idiv(us, 58)       // 58 us/cm round trip
}

// Local self-test, independent of the browser: flap the wing once.
input.onButtonPressed(Button.A, function () {
    flapWing()
})

// Flap command from the browser game.
serial.onDataReceived(serial.delimiters(Delimiters.NewLine), function () {
    let msg = serial.readUntil(serial.delimiters(Delimiters.NewLine))
    if (msg == "f" || msg == "F") {
        flapWing()
    }
})

// Stream distance at ~20 Hz.
basic.forever(function () {
    serial.writeLine("D:" + readDistanceCm())
    basic.pause(50)
})
