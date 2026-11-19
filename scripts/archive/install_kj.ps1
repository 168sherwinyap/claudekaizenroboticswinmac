param([string]$port = "COM6", [int]$baud = 115200)

$p = [System.IO.Ports.SerialPort]::new($port, $baud, [System.IO.Ports.Parity]::None, 8, [System.IO.Ports.StopBits]::One)
$p.ReadTimeout = 3000

function Drain([int]$ms = 900) {
    Start-Sleep -Milliseconds $ms
    return $p.ReadExisting()
}

$py = @'
prog = '''from microbit import *

while True:
    if uart.any():
        key = uart.read(1)
        if key == b"k":
            display.show(Image.HAPPY)
            print("smile")
        elif key == b"j":
            display.show(Image.SAD)
            print("frown")
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
    $p.Write("import os" + [string][char]13)
    $p.Write("print('FILES', os.listdir(), 'LEN', len(open('main.py').read()))" + [string][char]13)
    Start-Sleep -Milliseconds 800
    $check = $p.ReadExisting()
    $p.Write([string][char]4)   # Ctrl-D -> soft reset, runs main.py
    Start-Sleep -Milliseconds 3500
    $boot = $p.ReadExisting()
    Write-Output "---SAVE---"
    Write-Output $save
    Write-Output "---CHECK---"
    Write-Output $check
    Write-Output "---BOOT---"
    Write-Output $boot
} catch {
    Write-Output "SERIAL-ERROR: $($_.Exception.Message)"
} finally {
    if ($p.IsOpen) { $p.Close() }
}
