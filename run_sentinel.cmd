@echo off
title Sonar Sentinel - radar (Web Serial)
cd /d "%~dp0sentinel\web"
start "sentinel-server" /min python -m http.server 8002 --bind 127.0.0.1
timeout /t 2 /nobreak >nul
start "" http://127.0.0.1:8002/
echo Server running at http://127.0.0.1:8002 (minimized). Close the "sentinel-server" window to stop.
pause
