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
    $p.Write("pin_logo.set_touch_mode(pin_logo.CAPACITIVE)" + $cr)
    $a = Drain 500
    $p.Write("print('TOUCHED', pin_logo.is_touched())" + $cr)
    $b = Drain 500
    $p.Write("print('SHAKE_NOW', accelerometer.was_gesture('shake'))" + $cr)
    $c = Drain 500
    $p.Write("print('ROWS_MEH', [''.join(str(display.get_pixel(x,y)) for x in range(5)) for y in range(5)])" + $cr)
    $d = Drain 500
    $p.Write("display.show(Image.MEH)" + $cr)
    [void](Drain 400)
    $p.Write("print('ROWS_MEH', [''.join(str(display.get_pixel(x,y)) for x in range(5)) for y in range(5)])" + $cr)
    $e = Drain 500
    $p.Write("display.show(Image.CONFUSED)" + $cr)
    [void](Drain 400)
    $p.Write("print('ROWS_CONF', [''.join(str(display.get_pixel(x,y)) for x in range(5)) for y in range(5)])" + $cr)
    $f = Drain 500
    $p.Write([string][char]4)
    [void](Drain 2500)
    Write-Output "---SETMODE---"; Write-Output $a
    Write-Output "---TOUCH---"; Write-Output $b
    Write-Output "---SHAKE---"; Write-Output $c
    Write-Output "---MEH---"; Write-Output $e
    Write-Output "---CONF---"; Write-Output $f
} catch {
    Write-Output "SERIAL-ERROR: $($_.Exception.Message)"
} finally {
    if ($p.IsOpen) { $p.Close() }
}
