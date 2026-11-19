param([string]$port = "COM7", [int]$baud = 115200)

$p = [System.IO.Ports.SerialPort]::new($port, $baud, [System.IO.Ports.Parity]::None, 8, [System.IO.Ports.StopBits]::One)
$p.ReadTimeout = 3000
try {
    $p.Open()
    Start-Sleep -Milliseconds 300
    # Ctrl-C interrupts a running program, Ctrl-D soft-resets into the REPL
    $p.Write([string][char]3)
    Start-Sleep -Milliseconds 300
    $p.Write([string][char]4)
    Start-Sleep -Milliseconds 1200
    $out = $p.ReadExisting()
    Write-Output "---SERIAL-START---"
    Write-Output $out
    Write-Output "---SERIAL-END---"
} catch {
    Write-Output "SERIAL-ERROR: $($_.Exception.Message)"
} finally {
    if ($p.IsOpen) { $p.Close() }
}
