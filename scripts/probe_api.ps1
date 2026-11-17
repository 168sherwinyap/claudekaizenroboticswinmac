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
    $p.Write([string][char]3)      # Ctrl-C -> REPL
    [void](Drain 1200)
    $p.Write("from microbit import *" + $cr)
    [void](Drain 400)
    $p.Write("print('LOGO', type(logo), hasattr(logo,'was_touched'), hasattr(logo,'is_touched'), hasattr(logo,'was_pressed'))" + $cr)
    $a = Drain 600
    $p.Write("print('IMAGES', hasattr(Image,'MEH'), hasattr(Image,'CONFUSED'), hasattr(Image,'ASLEEP'), hasattr(Image,'SURPRISED'))" + $cr)
    $b = Drain 600
    $p.Write("print('GESTURE', hasattr(accelerometer,'was_gesture'), hasattr(accelerometer,'get_gestures'))" + $cr)
    $c = Drain 600
    $p.Write("display.show(Image.MEH)" + $cr)
    [void](Drain 400)
    $p.Write("print('MEH', display.get_pixel(0,2), display.get_pixel(0,3))" + $cr)
    $d = Drain 500
    $p.Write("display.show(Image.CONFUSED)" + $cr)
    [void](Drain 400)
    $p.Write("print('CONFUSED', display.get_pixel(0,1), display.get_pixel(0,2), display.get_pixel(0,3), display.get_pixel(0,4))" + $cr)
    $e = Drain 500
    $p.Write([string][char]4)
    [void](Drain 2500)
    Write-Output "---LOGO---"; Write-Output $a
    Write-Output "---IMAGES---"; Write-Output $b
    Write-Output "---GESTURE---"; Write-Output $c
    Write-Output "---MEH---"; Write-Output $d
    Write-Output "---CONFUSED---"; Write-Output $e
} catch {
    Write-Output "SERIAL-ERROR: $($_.Exception.Message)"
} finally {
    if ($p.IsOpen) { $p.Close() }
}
