# Path to Speedtest CLI
$speedtestPath = "C:\speedtest.exe"

# Function to run speedtest and show notification
function Test-NetworkSpeed {
    if (Test-Path $speedtestPath) {
        $result = &$speedtestPath --format=json
        $speedData = $result | ConvertFrom-Json
        
        $download = [math]::Round(($speedData.download.bandwidth * 8 / 1000000), 2)
        $upload = [math]::Round(($speedData.upload.bandwidth * 8 / 1000000), 2)
        $ping = $speedData.ping.latency

        # Create notification message
        $message = "Download: $download Mbps`nUpload: $upload Mbps`nPing: $ping ms"

        # Show notification
        New-BurntToastNotification -Text "Network Speed Test Result", $message
    } else {
        Write-Error "Speedtest executable not found at $speedtestPath"
    }
}

# Schedule the test to run daily at 6 AM
$trigger = New-ScheduledTaskTrigger -Daily -At "6:00AM"
$action = New-ScheduledTaskAction -Execute "PowerShell.exe" -Argument "-File `"$PSCommandPath`""
Register-ScheduledTask -TaskName "SpeedtestNotifier" -Trigger $trigger -Action $action -User "SYSTEM" -RunLevel Highest -Force

# Run the function initially
Test-NetworkSpeed
