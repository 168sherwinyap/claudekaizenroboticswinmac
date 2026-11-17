param([string]$port = "COM7", [int]$baud = 115200)

$p = [System.IO.Ports.SerialPort]::new($port, $baud, [System.IO.Ports.Parity]::None, 8, [System.IO.Ports.StopBits]::One)
$p.ReadTimeout = 3000
function Read-All {
    Start-Sleep -Milliseconds 1200
    return $p.ReadExisting()
}
try {
    $p.Open()
    Start-Sleep -Milliseconds 300
    # soft reset: MicroPython re-runs main.py, any traceback shows here
    $p.Write([string][char]4)
    $boot = Read-All
    # interrupt main.py to reach the REPL
    $p.Write([string][char]3)
    $interrupt = Read-All
    # confirm the file landed and the faces exist
    $p.Write("import os" + [char]13)
    $p.Write("print('FILES', os.listdir())" + [char]13)
    $p.Write("from microbit import *" + [char]13)
    $p.Write("print('FACES_OK', Image.HAPPY is not None and Image.SAD is not None)" + [char]13)
    $result = Read-All
    Write-Output "---BOOT---"
    Write-Output $boot
    Write-Output "---INTERRUPT---"
    Write-Output $interrupt
    Write-Output "---REPL---"
    Write-Output $result
} catch {
    Write-Output "SERIAL-ERROR: $($_.Exception.Message)"
} finally {
    if ($p.IsOpen) { $p.Close() }
}
