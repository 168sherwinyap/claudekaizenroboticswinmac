param([string]$Port = "")

function Find-MicrobitPort {
    $dev = Get-PnpDevice -Class Ports -PresentOnly |
        Where-Object { $_.InstanceId -like "*VID_0D28&PID_0204*" } |
        Select-Object -First 1
    if ($dev -and $dev.FriendlyName -match '\((COM\d+)\)') { return $Matches[1] }
    return ""
}

if (-not $Port) { $Port = Find-MicrobitPort }
if (-not $Port) { Write-Output "No micro:bit serial port found. Plug the board in."; exit 1 }

# Build the paste payload from the on-disk main.py (single source of truth).
$srcPath = Join-Path $PSScriptRoot "..\main.py"
$src = Get-Content -Raw -LiteralPath $srcPath
$src = $src -replace "`r`n", "`n"
if ($src.Contains("'''")) { Write-Output "main.py must not contain triple quotes."; exit 1 }
$py = "prog = r'''" + $src + "'''`n" +
      "with open('main.py', 'w') as f:`n" +
      "    f.write(prog)`n" +
      "print('SAVED', len(prog))"

$p = [System.IO.Ports.SerialPort]::new($Port, 115200, [System.IO.Ports.Parity]::None, 8, [System.IO.Ports.StopBits]::One)
$p.ReadTimeout = 3000
function Drain([int]$ms = 900) {
    Start-Sleep -Milliseconds $ms
    return $p.ReadExisting()
}

try {
    $p.Open()
} catch {
    Write-Output "Could not open $Port`: $($_.Exception.Message)"
    Write-Output "Stop any keyboard bridge or serial monitor using the port first."
    exit 1
}

try {
    Start-Sleep -Milliseconds 1200
    $p.Write([string][char]3)   # Ctrl-C -> REPL
    [void](Drain 1200)
    $p.Write([string][char]5)   # Ctrl-E -> paste mode
    Start-Sleep -Milliseconds 300
    foreach ($line in ($py -split "`n")) {
        $p.Write($line + "`n")
        Start-Sleep -Milliseconds 40
    }
    $p.Write([string][char]4)   # Ctrl-D -> execute paste
    Start-Sleep -Milliseconds 1000
    $save = $p.ReadExisting()
    $p.Write("import os" + [string][char]13)
    $p.Write("print('FILES', os.listdir(), 'LEN', len(open('main.py').read()))" + [string][char]13)
    Start-Sleep -Milliseconds 800
    $check = $p.ReadExisting()
    $p.Write([string][char]4)   # Ctrl-D -> soft reset, runs main.py
    Start-Sleep -Milliseconds 3500
    $boot = $p.ReadExisting()
    Write-Output "---PORT---"
    Write-Output $Port
    Write-Output "---SAVE---"
    Write-Output $save
    Write-Output "---CHECK---"
    Write-Output $check
    Write-Output "---BOOT---"
    Write-Output $boot
} finally {
    if ($p.IsOpen) { $p.Close() }
}
