#!/usr/bin/env bash
# Serve the HandLab sensor dashboard + 5-servo hand (Web Serial) on :8003.
set -e
cd "$(dirname "$0")"
PY=python3; command -v python3 >/dev/null 2>&1 || PY=python
URL="http://127.0.0.1:8003/"
echo "Serving handlab/web on $URL  (Ctrl+C to stop)"
if command -v open >/dev/null 2>&1; then
  (sleep 2; open "$URL") &
elif command -v xdg-open >/dev/null 2>&1; then
  (sleep 2; xdg-open "$URL") &
fi
exec "$PY" -m http.server 8003 --bind 127.0.0.1 --directory handlab/web
