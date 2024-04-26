# PowerShell Script to Output Current Time to Keep Session Active

# Set the interval between time outputs (in seconds)
$interval = 60  # 60 seconds

# Loop to output the current time at the defined interval
while ($true) {
    # Output the current time
    $currentTime = Get-Date
    Write-Output "Current time: $currentTime"

    # Wait for the defined interval
    Start-Sleep -Seconds $interval
}
