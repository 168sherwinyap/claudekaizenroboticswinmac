param(
    [string]$Port = "",
    [int]$Seconds = 0,
    [int]$SmileKey = 0x4B,   # K
    [int]$FrownKey = 0x4A,   # J
    [int]$CircleKey = 0x52,  # R
    [int]$CrossKey = 0x58    # X
)

# Locate the micro:bit's serial port (DAPLink: VID_0D28 PID_0204) unless one was given.
if (-not $Port) {
    $dev = Get-PnpDevice -Class Ports -PresentOnly |
        Where-Object { $_.InstanceId -like "*VID_0D28&PID_0204*" } |
        Select-Object -First 1
    if ($dev -and $dev.FriendlyName -match '\((COM\d+)\)') {
        $Port = $Matches[1]
    }
}
if (-not $Port) {
    Write-Host "No micro:bit serial port found. Plug the board in, or run with -Port COMx."
    exit 1
}

Add-Type @"
using System;
using System.Runtime.InteropServices;
public static class WinKey {
    [DllImport("user32.dll")]
    public static extern short GetAsyncKeyState(int vKey);
}
"@

$sp = [System.IO.Ports.SerialPort]::new($Port, 115200, [System.IO.Ports.Parity]::None, 8, [System.IO.Ports.StopBits]::One)
$sp.ReadTimeout = 100
try {
    $sp.Open()
} catch {
    Write-Host "Could not open $Port`: $($_.Exception.Message)"
    Write-Host "Close anything else using the port (serial monitors, editors) and try again."
    exit 1
}

Write-Host "micro:bit keyboard bridge on $Port"
Write-Host "  press k -> smile + 90, j -> frown + 0, r -> circle + 0, x -> cross + 180 deg.  Ctrl+C to stop."
Write-Host ""

$deadline = if ($Seconds -gt 0) { (Get-Date).AddSeconds($Seconds) } else { [datetime]::MaxValue }
$prevK = $false
$prevJ = $false
$prevR = $false
$prevX = $false

try {
    while ((Get-Date) -lt $deadline) {
        $k = ([WinKey]::GetAsyncKeyState($SmileKey) -band 0x8000) -ne 0
        $j = ([WinKey]::GetAsyncKeyState($FrownKey) -band 0x8000) -ne 0
        $r = ([WinKey]::GetAsyncKeyState($CircleKey) -band 0x8000) -ne 0
        $x = ([WinKey]::GetAsyncKeyState($CrossKey) -band 0x8000) -ne 0
        try {
            if ($k -and -not $prevK) { $sp.Write("k"); Write-Host "sent k" }
            if ($j -and -not $prevJ) { $sp.Write("j"); Write-Host "sent j" }
            if ($r -and -not $prevR) { $sp.Write("r"); Write-Host "sent r" }
            if ($x -and -not $prevX) { $sp.Write("x"); Write-Host "sent x" }
        } catch {
            Write-Host "Serial write failed: $($_.Exception.Message)"
            break
        }
        $prevK = $k
        $prevJ = $j
        $prevR = $r
        $prevX = $x
        try {
            if ($sp.BytesToRead -gt 0) {
                $msg = $sp.ReadExisting().Trim()
                if ($msg) { Write-Host "micro:bit: $msg" }
            }
        } catch { }
        Start-Sleep -Milliseconds 25
    }
} finally {
    if ($sp.IsOpen) { $sp.Close() }
    Write-Host "Bridge stopped."
}
