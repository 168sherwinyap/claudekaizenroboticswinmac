"""Wait for the micro:bit program, then drive k/j/r/x and a couple of letters.

Connects by address (Windows reaches bonded LE devices even when the scan does
not list them), subscribes to the board's echoes, and logs everything.
"""
import asyncio
import sys
import time

from bleak import BleakClient, BleakScanner

ADDR = "CA:66:5A:0B:95:5F"
WR = "6e400003-b5a3-f393-e0a9-e50e24dcca9e"
NOTIF = "6e400002-b5a3-f393-e0a9-e50e24dcca9e"
SECONDS = int(sys.argv[1]) if len(sys.argv) > 1 else 120


def log(msg):
    print("[%s] %s" % (time.strftime("%H:%M:%S"), msg), flush=True)


async def main():
    def on_notify(_, data):
        log("board: %s" % bytes(data).decode("ascii", "replace").strip())

    client = None
    deadline = time.time() + SECONDS
    while time.time() < deadline:
        try:
            dev = await BleakScanner.find_device_by_address(ADDR, timeout=3.0)
            if dev:
                log("saw %s %s" % (dev.address, dev.name))
            c = BleakClient(dev if dev else ADDR, timeout=12.0)
            await c.connect()
            await asyncio.wait_for(c.start_notify(NOTIF, on_notify), timeout=8)
            client = c
            log("connected to the running program")
            break
        except Exception:
            await asyncio.sleep(2)

    if client is None:
        log("never reached a running program")
        return

    for ch in ("k", "j", "r", "x", "a", "9"):
        try:
            await client.write_gatt_char(WR, (ch + "\n").encode(), response=True)
            log("sent %s" % ch)
        except Exception as exc:
            log("write failed: %s %s" % (type(exc).__name__, exc))
            break
        await asyncio.sleep(3)

    await asyncio.sleep(2)
    log("still connected: %s" % client.is_connected)
    if client.is_connected:
        await client.disconnect()


asyncio.run(main())
