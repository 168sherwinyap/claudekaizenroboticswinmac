from microbit import *

FLAT = Image("00000:09090:00000:99999:00000")

pin_logo.set_touch_mode(pin_logo.CAPACITIVE)
touching = False

while True:
    if button_a.was_pressed():
        display.show(Image.HAPPY)
    if button_b.was_pressed():
        display.show(Image.SAD)
    touch = pin_logo.is_touched()
    if touch and not touching:
        display.show(FLAT)
    touching = touch
    if accelerometer.was_gesture("shake"):
        display.show(Image.CONFUSED)
