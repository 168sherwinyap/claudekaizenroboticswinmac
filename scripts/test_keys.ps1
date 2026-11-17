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
    Start-Sleep -Milliseconds 2500   # boot / banner
    [void](Drain 300)
    $p.Write("k")
    $k = Drain 1200
    $p.Write("j")
    $j = Drain 1200
    $p.Write([string][char]3)        # try to stop main.py for a display readback
    $intr = Drain 1500
    $p.Write("print('ROWS', [''.join(str(display.get_pixel(x,y)) for x in range(5)) for y in range(5)])" + $cr)
    $rows = Drain 800
    Write-Output "---AFTER_K---"
    Write-Output $k
    Write-Output "---AFTER_J---"
    Write-Output $j
    Write-Output "---INTERRUPT---"
    Write-Output $intr
    Write-Output "---ROWS---"
    Write-Output $rows
} catch {
    Write-Output "SERIAL-ERROR: $($_.Exception.Message)"
} finally {
    if ($p.IsOpen) { $p.Close() }
}
