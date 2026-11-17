@echo off
title Kaizen Pushup Counter (Web Serial)
cd /d "%~dp0"
start "kaizen-pushup-server" /min python -m http.server 8001
timeout /t 2 /nobreak >nul
start "" http://localhost:8001
echo Server running at http://localhost:8001 (minimized). Close the "kaizen-pushup-server" window to stop.
pause
