@echo off
cd /d "%~dp0"
python "%~dp0ble_keyboard_bridge.py" %*
pause
