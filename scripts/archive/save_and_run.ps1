param([string]$port = "COM7", [int]$baud = 115200)

$p = [System.IO.Ports.SerialPort]::new($port, $baud, [System.IO.Ports.Parity]::None, 8, [System.IO.Ports.StopBits]::One)
$p.ReadTimeout = 3000
$p.NewLine = "`n"

function Drain {
    Start-Sleep -Milliseconds 900
    return $p.ReadExisting()
}

$py = @'
prog = """from microbit import *

while True:
    if button_a.was_pressed():
        display.show(Image.HAPPY)
    if button_b.was_pressed():
        display.show(Image.SAD)
"""
with open('main.py', 'w') as f:
    f.write(prog)
print('SAVED', len(prog))
'@

try {
    $p.Open()
    Start-Sleep -Milliseconds 300
    $p.Write([string][char]3)   # Ctrl-C -> REPL
    [void](Drain)
    $p.Write([string][char]5)   # Ctrl-E -> paste mode
    Start-Sleep -Milliseconds 300
    foreach ($line in ($py -split "`n")) {
        $p.Write($line + "`n")
        Start-Sleep -Milliseconds 40
    }
    $p.Write([string][char]4)   # Ctrl-D -> execute paste
    $save = Drain
    $p.Write([string][char]4)   # Ctrl-D -> soft reset, runs main.py
    $boot = Drain
    $p.Write([string][char]3)   # Ctrl-C -> back to REPL
    [void](Drain)
    $p.Write("import os" + "`n")
    $p.Write("print('FILES', os.listdir())" + "`n")
    $p.Write("print('CONTENT_OK', 'button_b' in open('main.py').read())" + "`n")
    $check = Drain
    Write-Output "---SAVE---"
    Write-Output $save
    Write-Output "---BOOT---"
    Write-Output $boot
    Write-Output "---CHECK---"
    Write-Output $check
} catch {
    Write-Output "SERIAL-ERROR: $($_.Exception.Message)"
} finally {
    if ($p.IsOpen) { $p.Close() }
}
