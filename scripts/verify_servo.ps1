param([string]$Port = "")

function Find-MicrobitPort {
    $dev = Get-PnpDevice -Class Ports -PresentOnly |
        Where-Object { $_.InstanceId -like "*VID_0D28&PID_0204*" } |
        Select-Object -First 1
    if ($dev -and $dev.FriendlyName -match '\((COM\d+)\)') { return $Matches[1] }
    return ""
}

if (-not $Port) { $Port = Find-MicrobitPort }
if (-not $Port) { Write-Output "No micro:bit serial port found."; exit 1 }

$cr = [string][char]13
$p = [System.IO.Ports.SerialPort]::new($Port, 115200, [System.IO.Ports.Parity]::None, 8, [System.IO.Ports.StopBits]::One)
$p.ReadTimeout = 3000

function Drain([int]$ms = 900) {
    Start-Sleep -Milliseconds $ms
    return $p.ReadExisting()
}
function Send([string]$line) {
    $p.Write($line + $cr)
    Start-Sleep -Milliseconds 250
}
function Probe {
    Send "i2c.write(0x40, bytes([0x26]))"
    Send "d = i2c.read(0x40, 4)"
    Send "print('CH8', d[2] | (d[3] << 8))"
    Send "print('FACE', display.get_pixel(0,3), display.get_pixel(0,4))"
    Send "print('SHAPE', display.get_pixel(0,1), display.get_pixel(2,2), display.get_pixel(2,0))"
    return (Drain 800)
}
function KeyTest([string]$key) {
    $p.Write([string][char]4)      # soft reset -> main.py
    Start-Sleep -Milliseconds 3200
    [void](Drain 300)
    $p.Write($key)
    $echo = Drain 700
    $p.Write([string][char]3)      # Ctrl-C -> REPL
    [void](Drain 1400)
    $probe = Probe
    return @{ echo = $echo; probe = $probe }
}

try {
    $p.Open()
} catch {
    Write-Output "Could not open $Port`: $($_.Exception.Message)"
    exit 1
}

$result = @{}
try {
    Start-Sleep -Milliseconds 1200
    $p.Write([string][char]3)
    [void](Drain 1200)

    # PCA9685 presence and prescale
    Send "print('SCAN', i2c.scan())"
    Send "i2c.write(0x40, bytes([0xFE]))"
    Send "print('PRESCALE', i2c.read(0x40, 1)[0])"
    $presence = Drain 1000

    $result.k = KeyTest "k"
    $result.j = KeyTest "j"
    $result.r = KeyTest "r"
    $result.x = KeyTest "x"

    $p.Write([string][char]4)      # leave board running main.py
    Start-Sleep -Milliseconds 3000

    Write-Output "---PORT---"
    Write-Output $Port
    Write-Output "---PCA9685---"
    Write-Output $presence
    Write-Output "---AFTER_K---"
    Write-Output $result.k.echo
    Write-Output $result.k.probe
    Write-Output "---AFTER_J---"
    Write-Output $result.j.echo
    Write-Output $result.j.probe
    Write-Output "---AFTER_R---"
    Write-Output $result.r.echo
    Write-Output $result.r.probe
    Write-Output "---AFTER_X---"
    Write-Output $result.x.echo
    Write-Output $result.x.probe
} finally {
    if ($p.IsOpen) { $p.Close() }
}
