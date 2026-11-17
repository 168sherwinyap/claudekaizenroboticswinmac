@echo off
title Flappy Bird - hand control (Web Serial)
cd /d "%~dp0web"
start "flappy-server" /min python -m http.server 8000
timeout /t 2 /nobreak >nul
start "" http://localhost:8000
echo Server running at http://localhost:8000 (minimized). Close the "flappy-server" window to stop.
pause
