"""Wait for the micro:bit to advertise, connect, and verify UART delivery.

Scans for up to SCAN_SECONDS, connects to the first "BBC micro:bit", subscribes
to the UART notify characteristic, writes a few characters, and logs echoes.
"""
import asyncio
import time

from bleak import BleakClient, BleakScanner

WR = "6e400003-b5a3-f393-e0a9-e50e24dcca9e"
NOTIF = "6e400002-b5a3-f393-e0a9-e50e24dcca9e"
SCAN_SECONDS = 150


def log(msg):
    print("[%s] %s" % (time.strftime("%H:%M:%S"), msg), flush=True)


def on_notify(_, data):
    log("NOTIFY: %r" % bytes(data))


async def find():
    def match(dev, adv):
        name = adv.local_name or dev.name or ""
        return "micro:bit" in name.lower()

    deadline = time.time() + SCAN_SECONDS
    while time.time() < deadline:
        dev = await BleakScanner.find_device_by_filter(match, timeout=3.0)
        if dev:
            return dev
    return None


async def main():
    log("scanning for micro:bit ...")
    dev = await find()
    if not dev:
        log("no micro:bit found during scan window")
        return
    log("found %s (%s)" % (dev.name, dev.address))

    client = BleakClient(dev, timeout=25.0)
    await client.connect()
    log("connected")
    await client.start_notify(NOTIF, on_notify)
    for ch in ("Z", "Q", "7"):
        await client.write_gatt_char(WR, (ch + "\n").encode(), response=True)
        log("wrote %s" % ch)
        await asyncio.sleep(3)
    await asyncio.sleep(2)
    await client.disconnect()
    log("disconnected")


asyncio.run(main())
