"""Log any micro:bit seen advertising, for N seconds."""
import asyncio
import sys
import time

from bleak import BleakScanner

SECONDS = int(sys.argv[1]) if len(sys.argv) > 1 else 90


def stamp():
    return time.strftime("%H:%M:%S")


async def main():
    seen = set()

    def cb(dev, adv):
        name = adv.local_name or dev.name or ""
        if "micro" in name.lower() and dev.address not in seen:
            seen.add(dev.address)
            print("[%s] SEEN %s %s rssi=%s" % (stamp(), dev.address, name, adv.rssi), flush=True)

    print("[%s] scanning %ds ..." % (stamp(), SECONDS), flush=True)
    async with BleakScanner(detection_callback=cb, scanning_mode="active"):
        await asyncio.sleep(SECONDS)
    print("[%s] done; %d micro:bit(s) seen" % (stamp(), len(seen)), flush=True)


asyncio.run(main())
