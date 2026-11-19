param([string]$port = "COM7", [int]$baud = 115200)

$p = [System.IO.Ports.SerialPort]::new($port, $baud, [System.IO.Ports.Parity]::None, 8, [System.IO.Ports.StopBits]::One)
$p.ReadTimeout = 3000

function Drain([int]$ms = 900) {
    Start-Sleep -Milliseconds $ms
    return $p.ReadExisting()
}

$py = @'
prog = '''from microbit import *

FLAT = Image("00000:09090:00000:99999:00000")

pin_logo.set_touch_mode(pin_logo.CAPACITIVE)
touching = False

while True:
    if button_a.was_pressed():
        display.show(Image.HAPPY)
    if button_b.was_pressed():
        display.show(Image.SAD)
    touch = pin_logo.is_touched()
    if touch and not touching:
        display.show(FLAT)
    touching = touch
    if accelerometer.was_gesture("shake"):
        display.show(Image.CONFUSED)
'''
with open('main.py', 'w') as f:
    f.write(prog)
print('SAVED', len(prog))
'@

try {
    $p.Open()
    Start-Sleep -Milliseconds 1200
    $p.Write([string][char]3)   # Ctrl-C -> REPL
    [void](Drain 1200)
    $p.Write([string][char]5)   # Ctrl-E -> paste mode
    Start-Sleep -Milliseconds 300
    foreach ($line in ($py -split "`n")) {
        $p.Write($line + "`n")
        Start-Sleep -Milliseconds 40
    }
    $p.Write([string][char]4)   # Ctrl-D -> execute paste
    Start-Sleep -Milliseconds 1000
    $save = $p.ReadExisting()
    $p.Write([string][char]4)   # Ctrl-D -> soft reset, runs main.py
    Start-Sleep -Milliseconds 3500
    $boot = $p.ReadExisting()
    Write-Output "---SAVE---"
    Write-Output $save
    Write-Output "---BOOT---"
    Write-Output $boot
} catch {
    Write-Output "SERIAL-ERROR: $($_.Exception.Message)"
} finally {
    if ($p.IsOpen) { $p.Close() }
}
