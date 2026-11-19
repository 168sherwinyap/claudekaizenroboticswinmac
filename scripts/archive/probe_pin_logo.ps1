param([string]$port = "COM7", [int]$baud = 115200)

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
    $p.Write("print('DIR', [n for n in dir(pin_logo) if not n.startswith('_')])" + $cr)
    $a = Drain 700
    $p.Write("print('TOUCHED', pin_logo.is_touched(), pin_logo.was_touched())" + $cr)
    $b = Drain 600
    $p.Write([string][char]4)
    [void](Drain 2500)
    Write-Output "---DIR---"; Write-Output $a
    Write-Output "---TOUCH---"; Write-Output $b
} catch {
    Write-Output "SERIAL-ERROR: $($_.Exception.Message)"
} finally {
    if ($p.IsOpen) { $p.Close() }
}
