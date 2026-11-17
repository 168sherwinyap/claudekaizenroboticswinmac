"""Pair with the micro:bit as soon as it appears (pairing mode window is short)."""
import asyncio
import sys
import time

from bleak import BleakClient, BleakScanner

SECONDS = int(sys.argv[1]) if len(sys.argv) > 1 else 120


async def main():
    deadline = time.time() + SECONDS
    while time.time() < deadline:
        dev = await BleakScanner.find_device_by_filter(
            lambda d, a: "micro:bit" in ((a.local_name or d.name or "").lower()),
            timeout=3.0,
        )
        if not dev:
            continue
        print("[%s] found %s, connecting" % (time.strftime("%H:%M:%S"), dev.address), flush=True)
        try:
            c = BleakClient(dev, timeout=20.0)
            await c.connect()
            await asyncio.wait_for(c.pair(), timeout=45)
            print("[%s] PAIRED %s" % (time.strftime("%H:%M:%S"), dev.address), flush=True)
            await c.disconnect()
            return
        except Exception as exc:
            print("[%s] attempt failed: %s %s" % (time.strftime("%H:%M:%S"), type(exc).__name__, exc), flush=True)
    print("no pairing completed", flush=True)


asyncio.run(main())
