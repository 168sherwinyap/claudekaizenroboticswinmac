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
    Start-Sleep -Milliseconds 2500
    $p.Write([string][char]3)   # interrupt main.py
    $intr = Drain 1200
    $p.Write("import os" + $cr)
    [void](Drain 400)
    $p.Write("print('FILES', os.listdir(), 'LEN', len(open('main.py').read()))" + $cr)
    $files = Drain 600
    $p.Write("print('FLAT_DEFINED', 'FLAT' in dir())" + $cr)
    $defined = Drain 500
    $p.Write("display.show(FLAT)" + $cr)
    [void](Drain 400)
    $p.Write("print('FLAT_ROWS', [''.join(str(display.get_pixel(x,y)) for x in range(5)) for y in range(5)])" + $cr)
    $rows = Drain 500
    $p.Write("print('TOUCH', pin_logo.is_touched())" + $cr)
    $touch = Drain 500
    $p.Write([string][char]4)   # back to running main.py
    [void](Drain 3000)
    Write-Output "---INTERRUPT---"; Write-Output $intr
    Write-Output "---FILES---"; Write-Output $files
    Write-Output "---DEFINED---"; Write-Output $defined
    Write-Output "---ROWS---"; Write-Output $rows
    Write-Output "---TOUCH---"; Write-Output $touch
} catch {
    Write-Output "SERIAL-ERROR: $($_.Exception.Message)"
} finally {
    if ($p.IsOpen) { $p.Close() }
}
