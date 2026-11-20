#!/usr/bin/env bash
# Serve the Flappy Bird hand-control app (Web Serial) on :8000.
set -e
cd "$(dirname "$0")"
PY=python3; command -v python3 >/dev/null 2>&1 || PY=python
URL="http://localhost:8000/"
echo "Serving flappy/web on $URL  (Ctrl+C to stop)"
if command -v open >/dev/null 2>&1; then
  (sleep 2; open "$URL") &
elif command -v xdg-open >/dev/null 2>&1; then
  (sleep 2; xdg-open "$URL") &
fi
exec "$PY" -m http.server 8000 --directory flappy/web
