param([string]$port = "COM6", [int]$baud = 115200)

$p = [System.IO.Ports.SerialPort]::new($port, $baud, [System.IO.Ports.Parity]::None, 8, [System.IO.Ports.StopBits]::One)
$p.ReadTimeout = 3000
$cr = [string][char]13

function Drain([int]$ms = 900) {
    Start-Sleep -Milliseconds $ms
    return $p.ReadExisting()
}

try {
    $p.Open()
    Start-Sleep -Milliseconds 1200
    $p.Write([string][char]3)
    [void](Drain 1200)
    $p.Write("from microbit import *" + $cr)
    [void](Drain 400)
    $p.Write("print('UART', uart)" + $cr)
    $a = Drain 600
    $p.Write("print('METHODS', hasattr(uart,'any'), hasattr(uart,'read'), hasattr(uart,'write'))" + $cr)
    $b = Drain 600
    $p.Write("print('BAUD', uart.baudrate if hasattr(uart,'baudrate') else 'n/a')" + $cr)
    $c = Drain 600
    Write-Output "---UART---"; Write-Output $a
    Write-Output "---METHODS---"; Write-Output $b
    Write-Output "---BAUD---"; Write-Output $c
} catch {
    Write-Output "SERIAL-ERROR: $($_.Exception.Message)"
} finally {
    if ($p.IsOpen) { $p.Close() }
}
