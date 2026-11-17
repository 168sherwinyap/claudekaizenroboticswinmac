from microbit import *

PCA, MODE1, PRESCALE = 0x40, 0x00, 0xFE
CH8_ON_L = 0x06 + 4 * 8          # S1 -> PCA9685 channel 8 -> 0x26

CIRCLE = Image("09990:90009:90009:90009:09990")
CROSS = Image("90009:09090:00900:09090:90009")

def _wr(buf):
    try:
        i2c.write(PCA, buf)
        return True
    except OSError:
        return False

def _init():
    # re-init each time: PCA9685 loses the 50 Hz prescale if RobotBit power cycles
    _wr(bytes([MODE1, 0x00]))
    _wr(bytes([MODE1, 0x10]))    # sleep - required before writing prescale
    sleep(2)
    _wr(bytes([PRESCALE, 121]))  # 50 Hz at 25 MHz
    _wr(bytes([MODE1, 0x00]))    # wake
    sleep(2)
    _wr(bytes([MODE1, 0xA1]))    # restart + auto-increment

def servo(angle):
    angle = max(0, min(180, angle))
    _init()
    pulse = 600 + angle * 10                 # 600..2400 us
    off = (pulse * 4096 + 10000) // 20000    # 0 deg = 123, 90 deg = 307, 180 deg = 492
    return _wr(bytes([CH8_ON_L, 0, 0, off & 0xFF, off >> 8]))

servo(0)                          # deterministic boot position

while True:
    if uart.any():
        key = uart.read(1)
        if key == b"k":
            display.show(Image.HAPPY)
            print("smile")        # echo first: I2C cannot delay the bridge
            servo(90)
        elif key == b"j":
            display.show(Image.SAD)
            print("frown")
            servo(0)
        elif key == b"r":
            display.show(CIRCLE)
            print("circle")
            servo(0)
        elif key == b"x":
            display.show(CROSS)
            print("cross")
            servo(180)
