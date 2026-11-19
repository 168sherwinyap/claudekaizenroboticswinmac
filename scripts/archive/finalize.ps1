param([string]$port = "COM7", [int]$baud = 115200)

$p = [System.IO.Ports.SerialPort]::new($port, $baud, [System.IO.Ports.Parity]::None, 8, [System.IO.Ports.StopBits]::One)
$p.ReadTimeout = 3000

function Drain([int]$ms = 900) {
    Start-Sleep -Milliseconds $ms
    return $p.ReadExisting()
}

try {
    $p.Open()
    Start-Sleep -Milliseconds 1500
    $p.Write([string][char]3)                    # Ctrl-C -> REPL
    [void](Drain 1200)
    $p.Write("compile(open('main.py').read(), 'main.py', 'exec')" + [string][char]13)
    $compiled = Drain 600
    $p.Write([string][char]4)                    # Ctrl-D -> run main.py
    Start-Sleep -Milliseconds 4000               # let it run, collect any traceback
    $after = $p.ReadExisting()
    Write-Output "---COMPILE---"
    Write-Output $compiled
    Write-Output "---RUNNING---"
    Write-Output $after
} catch {
    Write-Output "SERIAL-ERROR: $($_.Exception.Message)"
} finally {
    if ($p.IsOpen) { $p.Close() }
}
