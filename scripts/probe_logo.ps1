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
    $p.Write("import microbit" + $cr)
    [void](Drain 400)
    $p.Write("print('NAMES', [n for n in dir(microbit) if 'logo' in n.lower() or 'touch' in n.lower() or 'pin' in n.lower()])" + $cr)
    $a = Drain 700
    $p.Write("print('PINNAMES', [n for n in dir() if 'pin' in n.lower()])" + $cr)
    $b = Drain 700
    $p.Write("print('ALL_PINS', hasattr(microbit,'pin0'))" + $cr)
    $c = Drain 500
    $p.Write([string][char]4)
    [void](Drain 2500)
    Write-Output "---MODULE---"; Write-Output $a
    Write-Output "---GLOBALS---"; Write-Output $b
    Write-Output "---PINS---"; Write-Output $c
} catch {
    Write-Output "SERIAL-ERROR: $($_.Exception.Message)"
} finally {
    if ($p.IsOpen) { $p.Close() }
}
