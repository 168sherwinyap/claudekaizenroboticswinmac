#!/usr/bin/env bash
# Cross-platform launcher for the Bluetooth keyboard mirror.
set -e
cd "$(dirname "$0")"
PY=python3; command -v python3 >/dev/null 2>&1 || PY=python
exec "$PY" ble_keyboard_bridge.py "$@"
