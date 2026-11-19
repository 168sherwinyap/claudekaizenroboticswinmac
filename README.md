# Kaizen Robotics: micro:bit and RobotBit with Claude Code

This repository holds working programs for a BBC micro:bit v2 on a KittenBot RobotBit
board, with servo motors and an HC-SR04 distance sensor. It also holds the instructions
about this hardware that Claude Code reads at the start of a session.

## Requirements

- A micro:bit v2 on a RobotBit, with the 18650 battery fitted
- A USB data cable
- Claude Code
- Chrome or Edge, because the browser apps use Web Serial and other browsers do not support it
- Python 3, which serves the browser apps and runs the scripts that check the board
- Optional: Node.js and `npm install -g makecode`, needed only to build a changed board
  program

Launchers (`run_*.cmd`) and the PowerShell scripts are written for Windows.

## First run

1. Clone this repository.
2. Open a terminal in the repository folder.
3. Start a new Claude Code session in that folder with `claude`. Claude Code loads
   `CLAUDE.md` and the `kaizenrobotics` skill only when a session starts in this folder.
4. Plug the USB cable into the micro:bit's own USB port. USB on the RobotBit only charges
   the battery.
5. Switch the RobotBit power on. Servos get their power from the battery, and USB powers
   only the micro:bit.
6. Tell Claude Code what you want to build.

## Programs

| Program | What it does | Folder |
|---|---|---|
| Faces and servo | Keyboard keys show a face on the micro:bit and move a servo, over USB | `main.py`, `keyboard_bridge.ps1` |
| Bluetooth keyboard mirror | Typed keys scroll on the micro:bit, over Bluetooth | `ble/` |
| Flappy Bird hand control | Your hand height above the sensor moves the bird in a browser game | `flappy/` |
| Pushup counter | Counts pushups with the distance sensor, in the browser | `kaizen-pushup/` |
| Sonar Sentinel | A servo sweeps the sensor and a browser page draws a radar; a second servo closes a guard arm | `sentinel/` |
| HandLab | A browser dashboard shows every micro:bit sensor and moves five servos as a hand | `handlab/` |

Each MakeCode folder has a built program file at `built/binary.hex`. Copy that file to the
MICROBIT drive to load it onto the board.

## Documentation

- `CLAUDE.md` lists the programs, the check for what is on a board, and the rules that
  apply to every program.
- `.claude/skills/kaizenrobotics/SKILL.md` has the hardware constraints and a
  troubleshooting table.
- `.claude/skills/kaizenrobotics/reference.md` has the commands, wiring and serial
  protocol for each program.
- `BLE.md`, `sentinel/README.md`, `handlab/README.md` and `kaizen-pushup/README.md` are
  how-to pages for those programs.
