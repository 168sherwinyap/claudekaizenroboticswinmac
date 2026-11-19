param([int[]]$VirtualKeys = @(0x7C, 0x7D))   # default: F13, F14 (side-effect free)

Add-Type @"
using System;
using System.Runtime.InteropServices;
public static class KeySend {
    [DllImport("user32.dll")] public static extern void keybd_event(byte bVk, byte bScan, uint dwFlags, UIntPtr dwExtraInfo);
    [DllImport("user32.dll")] public static extern uint MapVirtualKey(uint uCode, uint uMapType);
}
"@

foreach ($vk in $VirtualKeys) {
    $scan = [byte][KeySend]::MapVirtualKey([uint32]$vk, 0)
    [KeySend]::keybd_event([byte]$vk, $scan, 0, [UIntPtr]::Zero)
    Start-Sleep -Milliseconds 80
    [KeySend]::keybd_event([byte]$vk, $scan, 2, [UIntPtr]::Zero)
    Start-Sleep -Milliseconds 400
    Write-Output ("injected vk=0x{0:X2} scan=0x{1:X2}" -f $vk, $scan)
}
