"""Pair in pairing mode, then grab the program the instant it appears.

The board advertises only briefly once the program starts, so this script:
  1. unpairs any stale Windows bond,
  2. waits for the pairing-mode advertisement and pairs,
  3. immediately runs a tight scan/connect loop (no long sleeps) that sends the
     Ctrl+K/J/R/X commands as soon as it is subscribed.
"""
import asyncio
import sys
import time

from bleak import BleakClient, BleakScanner

ADDR = "CA:66:5A:0B:95:5F"
WR = "6e400003-b5a3-f393-e0a9-e50e24dcca9e"
NOTIF = "6e400002-b5a3-f393-e0a9-e50e24dcca9e"
PAIR_WINDOW = 180
GRAB_WINDOW = 90

got = []


def log(msg):
    print("[%s] %s" % (time.strftime("%H:%M:%S"), msg), flush=True)


def is_microbit(device, adv):
    return "micro:bit" in ((adv.local_name or device.name or "").lower())


def on_notify(_, data):
    text = bytes(data).decode("ascii", "replace").strip()
    got.append(text)
    log("board: %s" % text)


async def unpair():
    try:
        from winrt.windows.devices.bluetooth import BluetoothLEDevice
        from winrt.windows.devices.enumeration import DeviceInformation
    except Exception:
        return
    dev = await BluetoothLEDevice.from_bluetooth_address_async(0xCA665A0B955F)
    if dev is None:
        return
    info = await DeviceInformation.create_from_id_async(dev.device_id)
    if info.pairing.is_paired:
        await info.pairing.unpair_async()
        log("unpaired stale bond")


async def pair_now():
    deadline = time.time() + PAIR_WINDOW
    log("waiting for pairing mode (A+B, tap reset, hold) ...")
    while time.time() < deadline:
        dev = await BleakScanner.find_device_by_filter(is_microbit, timeout=2.0)
        if not dev:
            continue
        log("saw %s %s" % (dev.address, dev.name))
        try:
            c = BleakClient(dev, timeout=20.0)
            await c.connect()
            await asyncio.wait_for(c.pair(), timeout=45)
            log("paired")
            try:
                await c.disconnect()
            except Exception:
                pass
            return True
        except Exception as exc:
            log("pair attempt failed: %s %s" % (type(exc).__name__, exc))
    return False


async def grab_and_test():
    deadline = time.time() + GRAB_WINDOW
    attempt = 0
    while time.time() < deadline:
        attempt += 1
        dev = await BleakScanner.find_device_by_filter(is_microbit, timeout=1.5)
        if dev:
            log("program advertising (attempt %d)" % attempt)
        target = dev if dev else ADDR
        client = None
        try:
            client = BleakClient(target, timeout=8.0)
            await client.connect()
            await asyncio.wait_for(client.start_notify(NOTIF, on_notify), timeout=6)
            log("subscribed (attempt %d)" % attempt)
        except Exception:
            if client is not None:
                try:
                    await client.disconnect()
                except Exception:
                    pass
            continue

        for ch in ("!k", "!j", "!r", "!x", "a", "9"):
            try:
                await client.write_gatt_char(WR, (ch + "\n").encode(), response=True)
                log("sent %s" % ch)
            except Exception as exc:
                log("write failed: %s %s" % (type(exc).__name__, exc))
                break
            await asyncio.sleep(3)

        await asyncio.sleep(2)
        log("still connected: %s | echoes: %s" % (client.is_connected, got))
        if client.is_connected:
            await client.disconnect()
        return True
    return False


async def main():
    await unpair()
    if not await pair_now():
        log("never saw the board in pairing mode")
        return
    log("now grabbing the program ...")
    if not await grab_and_test():
        log("could not connect to the program after pairing")


asyncio.run(main())
