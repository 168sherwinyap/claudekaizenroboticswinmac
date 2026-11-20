#!/usr/bin/env bash
# Serve the Kaizen pushup counter (Web Serial) on :8001.
set -e
cd "$(dirname "$0")"
PY=python3; command -v python3 >/dev/null 2>&1 || PY=python
URL="http://localhost:8001/"
echo "Serving this folder on $URL  (Ctrl+C to stop)"
if command -v open >/dev/null 2>&1; then
  (sleep 2; open "$URL") &
elif command -v xdg-open >/dev/null 2>&1; then
  (sleep 2; xdg-open "$URL") &
fi
exec "$PY" -m http.server 8001
