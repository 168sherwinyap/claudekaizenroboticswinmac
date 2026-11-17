"""Print everything the board writes to its USB serial port for N seconds."""
import sys
import time

import serial

PORT = sys.argv[1] if len(sys.argv) > 1 else "COM7"
SECONDS = int(sys.argv[2]) if len(sys.argv) > 2 else 120

s = serial.Serial(PORT, 115200, timeout=0.5)
start = time.time()
while time.time() - start < SECONDS:
    data = s.read(256)
    if data:
        print("[%s] %r" % (time.strftime("%H:%M:%S"), data), flush=True)
print("watch finished", flush=True)
s.close()
