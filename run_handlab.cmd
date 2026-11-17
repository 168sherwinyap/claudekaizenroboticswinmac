@echo off
title HandLab - sensor dashboard + hand (Web Serial)
cd /d "%~dp0handlab\web"
start "handlab-server" /min python -m http.server 8003 --bind 127.0.0.1
timeout /t 2 /nobreak >nul
start "" http://127.0.0.1:8003/
echo Server running at http://127.0.0.1:8003 (minimized). Close the "handlab-server" window to stop.
pause
