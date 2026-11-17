param([string]$port = "COM7", [int]$baud = 115200)

$p = [System.IO.Ports.SerialPort]::new($port, $baud, [System.IO.Ports.Parity]::None, 8, [System.IO.Ports.StopBits]::One)
$p.ReadTimeout = 3000

function Drain([int]$ms = 900) {
    Start-Sleep -Milliseconds $ms
    return $p.ReadExisting()
}

try {
    $p.Open()
    Start-Sleep -Milliseconds 4000   # let the board finish booting / USB re-enumerate
    $p.Write([string][char]3)        # Ctrl-C to stop main.py and reach REPL
    $banner = Drain 1200
    $p.Write("import os" + [string][char]13)
    $r1 = Drain 500
    $p.Write("print('FILES', os.listdir())" + [string][char]13)
    $r2 = Drain 500
    $p.Write("print('LEN', len(open('main.py').read()))" + [string][char]13)
    $r3 = Drain 500
    Write-Output "---BANNER---"
    Write-Output $banner
    Write-Output "---R1---"
    Write-Output $r1
    Write-Output "---R2---"
    Write-Output $r2
    Write-Output "---R3---"
    Write-Output $r3
} catch {
    Write-Output "SERIAL-ERROR: $($_.Exception.Message)"
} finally {
    if ($p.IsOpen) { $p.Close() }
}
