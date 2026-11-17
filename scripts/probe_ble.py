"""Ask the running MicroPython board what BLE support it has.

Sends Ctrl-C to break out of main.py, runs a few introspection statements at
the friendly REPL, then Ctrl-D to soft-reset back into main.py.
"""
import sys
import time

import serial

PORT = sys.argv[1] if len(sys.argv) > 1 else "COM7"


def drain(port, seconds):
    end = time.time() + seconds
    out = b""
    while time.time() < end:
        chunk = port.read(port.in_waiting or 1)
        if chunk:
            out += chunk
            end = time.time() + 0.35
    return out


with serial.Serial(PORT, 115200, timeout=0.2) as ser:
    ser.write(b"\x03\x03")          # interrupt main.py -> friendly REPL
    time.sleep(0.4)
    print("--- after ctrl-c ---")
    print(drain(ser, 1.0).decode("utf-8", "replace"))

    for probe in (
        "import bluetooth",
        "print(dir(bluetooth))",
        "import ubluetooth",
        "print(dir(ubluetooth))",
        "import microbit",
        "print(dir(microbit))",
    ):
        ser.write(probe.encode() + b"\r\n")
        time.sleep(0.5)
        print("--- %s ---" % probe)
        print(drain(ser, 1.2).decode("utf-8", "replace").strip())

    ser.write(b"\x03")               # make sure we are at a prompt
    time.sleep(0.2)
    ser.write(b"\x04")               # soft reset -> restarts main.py
    time.sleep(0.3)
