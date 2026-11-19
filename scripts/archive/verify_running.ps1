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
    Start-Sleep -Milliseconds 3500
    $p.Write([string][char]3)      # interrupt whatever is running
    $caught = Drain 1200
    $p.Write("from microbit import *" + $cr)
    [void](Drain 400)
    $p.Write("print('HAS_GETPIXEL', hasattr(display, 'get_pixel'))" + $cr)
    $gp = Drain 500
    $p.Write("display.show(Image.HAPPY)" + $cr)
    [void](Drain 500)
    $p.Write("print('HAPPY', display.get_pixel(0,3), display.get_pixel(0,4))" + $cr)
    $happy = Drain 500
    $p.Write("display.show(Image.SAD)" + $cr)
    [void](Drain 500)
    $p.Write("print('SAD', display.get_pixel(0,3), display.get_pixel(0,4))" + $cr)
    $sad = Drain 500
    $p.Write([string][char]4)      # soft reset: main.py takes over again
    $boot = Drain 3000
    Write-Output "---INTERRUPT---"
    Write-Output $caught
    Write-Output "---GETPIXEL---"
    Write-Output $gp
    Write-Output "---HAPPY---"
    Write-Output $happy
    Write-Output "---SAD---"
    Write-Output $sad
    Write-Output "---REBOOT---"
    Write-Output $boot
} catch {
    Write-Output "SERIAL-ERROR: $($_.Exception.Message)"
} finally {
    if ($p.IsOpen) { $p.Close() }
}
