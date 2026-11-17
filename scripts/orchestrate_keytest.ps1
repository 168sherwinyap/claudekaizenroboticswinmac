$root = "C:\Users\SureWin\dev\microbit"
$stamp = Get-Date -Format "yyyyMMdd-HHmmss"
$log = Join-Path $root "bridge_test-$stamp.log"
$err = Join-Path $root "bridge_test-$stamp.err"

# Run the real bridge, but listen for F13/F14 so the synthetic keys have no
# side effects on whatever window has focus. Serial bytes stay k/j.
$p = Start-Process powershell -PassThru -WindowStyle Hidden -ArgumentList @(
    '-NoProfile', '-ExecutionPolicy', 'Bypass',
    '-File', (Join-Path $root 'keyboard_bridge.ps1'),
    '-Port', 'COM6', '-Seconds', '14',
    '-SmileKey', '0x7C', '-FrownKey', '0x7D'
) -RedirectStandardOutput $log -RedirectStandardError $err

Start-Sleep -Seconds 3
& powershell -NoProfile -ExecutionPolicy Bypass -File (Join-Path $root 'scripts\send_test_keys.ps1')
[void]$p.WaitForExit(25000)
Start-Sleep -Milliseconds 500

Write-Output "---BRIDGE LOG---"
Get-Content $log -ErrorAction SilentlyContinue
$e = Get-Content $err -ErrorAction SilentlyContinue
if ($e) { Write-Output "---STDERR---"; $e }
