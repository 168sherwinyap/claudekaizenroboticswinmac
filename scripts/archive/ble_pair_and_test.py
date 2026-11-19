"""Pairing-mode aware handshake + key test.

Program-mode advertising on this board only lasts a short window, while pairing
mode advertises continuously. So: find the board, peek at whether the UART
service exists. If it does, test straight away. If not (pairing mode), pair,
then reconnect and test while the fresh advertising window is open.
"""
import asyncio
import sys
import time

from bleak import BleakClient, BleakScanner

ADDR = "CA:66:5A:0B:95:5F"
WR = "6e400003-b5a3-f393-e0a9-e50e24dcca9e"
NOTIF = "6e400002-b5a3-f393-e0a9-e50e24dcca9e"
NUS = "6e400001-b5a3-f393-e0a9-e50e24dcca9e"
SECONDS = int(sys.argv[1]) if len(sys.argv) > 1 else 180

got = []


def log(msg):
    print("[%s] %s" % (time.strftime("%H:%M:%S"), msg), flush=True)


def on_notify(_, data):
    text = bytes(data).decode("ascii", "replace").strip()
    got.append(text)
    log("board: %s" % text)


async def test_keys():
    """Connect and drive the board; returns True if the test ran."""
    for attempt in range(12):
        client = None
        try:
            client = BleakClient(ADDR, timeout=10.0)
            await client.connect()
            await asyncio.wait_for(client.start_notify(NOTIF, on_notify), timeout=8)
            log("connected (attempt %d)" % (attempt + 1))
        except Exception as exc:
            if client is not None:
                try:
                    await client.disconnect()
                except Exception:
                    pass
            await asyncio.sleep(2)
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


async def unpair():
    """Clear any stale Windows bond before pairing fresh."""
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


async def main():
    await unpair()
    deadline = time.time() + SECONDS
    while time.time() < deadline:
        dev = await BleakScanner.find_device_by_filter(
            lambda d, a: "micro:bit" in ((a.local_name or d.name or "").lower()),
            timeout=3.0,
        )
        if not dev:
            continue
        log("saw %s %s" % (dev.address, dev.name))

        # Pair straight away - no service peek, because connecting to probe the
        # board while it is in pairing mode drops it out of pairing mode.
        try:
            c = BleakClient(dev, timeout=20.0)
            await c.connect()
            await asyncio.wait_for(c.pair(), timeout=60)
            log("paired")
            await asyncio.sleep(2)
            await c.disconnect()
        except Exception as exc:
            log("pair attempt failed: %s %s" % (type(exc).__name__, exc))
            continue

        log("testing right after pairing")
        if await test_keys():
            return

    log("gave up without a successful test")


asyncio.run(main())
