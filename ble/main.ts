// micro:bit BLE keyboard mirror + RobotBit servo/faces
//
// The PC sends "<character>\n" over the Nordic UART service (NUS).
//   k -> HAPPY face, S1 to 90 degrees   (echo "smile")
//   j -> SAD face,   S1 to 0 degrees    (echo "frown")
//   r -> CIRCLE,     S1 to 0 degrees    (echo "circle")
//   x -> CROSS,      S1 to 180 degrees  (echo "cross")
//   anything else -> scrolls the character (echo "ACK:<character>")
//
// S1 is PCA9685 channel 8 on I2C address 0x40 (RobotBit, P19/P20), not a
// micro:bit pin. The prescale resets when the RobotBit loses power, so the
// chip is re-initialised before every move.

const PCA = 0x40
const MODE1 = 0x00
const PRESCALE = 0xFE
const CH8_ON_L = 0x06 + 4 * 8

function pcaWrite(bytes: number[]) {
    let buf = Buffer.create(bytes.length)
    for (let i = 0; i < bytes.length; i++) {
        buf[i] = bytes[i]
    }
    // Errors are swallowed so the faces keep working with the RobotBit off.
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

// Run the servo move in the background: an I2C hiccup must never block the
// Bluetooth link or the display.
function moveServo(angle: number) {
    serial.writeLine("SERVO:" + angle)
    control.inBackground(function () {
        servo(angle)
    })
}

function showCircle() {
    basic.showLeds(`
        . # # # .
        # . . . #
        # . . . #
        # . . . #
        . # # # .
        `)
}

function showCross() {
    basic.showLeds(`
        # . . . #
        . # . # .
        . . # . .
        . # . # .
        # . . . #
        `)
}

// Servo commands are prefixed with "!" by the PC bridge, which only adds the
// prefix when a modifier (Ctrl) is held. A bare letter is just a letter.
function handle(msg: string) {
    if (msg == "!k" || msg == "!K") {
        basic.showIcon(IconNames.Happy)
        bluetooth.uartWriteString("smile\n")
        moveServo(90)
    } else if (msg == "!j" || msg == "!J") {
        basic.showIcon(IconNames.Sad)
        bluetooth.uartWriteString("frown\n")
        moveServo(0)
    } else if (msg == "!r" || msg == "!R") {
        showCircle()
        bluetooth.uartWriteString("circle\n")
        moveServo(0)
    } else if (msg == "!x" || msg == "!X") {
        showCross()
        bluetooth.uartWriteString("cross\n")
        moveServo(180)
    } else {
        basic.showString(msg, 60)
        bluetooth.uartWriteString("ACK:" + msg + "\n")
    }
}

bluetooth.startUartService()
serial.writeLine("BOOT")
basic.showString("BT")

bluetooth.onBluetoothConnected(function () {
    serial.writeLine("CONNECTED")
    basic.showIcon(IconNames.Yes)
})

bluetooth.onBluetoothDisconnected(function () {
    serial.writeLine("DISCONNECTED")
    basic.showIcon(IconNames.No)
})

bluetooth.onUartDataReceived(serial.delimiters(Delimiters.NewLine), function () {
    let msg = bluetooth.uartReadUntil(serial.delimiters(Delimiters.NewLine))
    if (msg.length > 0) {
        serial.writeLine("GOT:" + msg)
        handle(msg)
    }
})

// Local self-test, independent of Bluetooth: A = the "k" command, B = the "x"
// command. Lets the faces and the S1 servo be checked with no PC involved.
input.onButtonPressed(Button.A, function () {
    serial.writeLine("BUTTON:A")
    handle("!k")
})

input.onButtonPressed(Button.B, function () {
    serial.writeLine("BUTTON:B")
    handle("!x")
})
