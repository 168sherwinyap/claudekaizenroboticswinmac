#!/usr/bin/env bash
# Cross-platform launcher for the USB keyboard bridge (faces + S1 servo).
set -e
cd "$(dirname "$0")"
PY=python3; command -v python3 >/dev/null 2>&1 || PY=python
exec "$PY" keyboard_bridge.py "$@"
