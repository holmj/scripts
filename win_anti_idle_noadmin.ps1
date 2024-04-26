# PowerShell Script to Toggle Caps Lock to Keep Windows Active

# Set the interval between key toggles (in milliseconds)
$interval = 60000  # 60 seconds

# Loop to toggle Caps Lock at the defined interval
while ($true) {
    # Simulate pressing Caps Lock key
    [console]::CapsLock = !$([console]::CapsLock)
    # Wait for the defined interval
    Start-Sleep -Milliseconds $interval
}
