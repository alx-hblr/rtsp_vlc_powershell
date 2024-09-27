# Configuration variables
# CHANGE THIS BEFORE RUNNING THIS SCRIPT:
$ipAddress = "IP_ADDRESS"
$username = "USERNAME"
$password = "PASSWORD"

# Path to VLC executable
$vlcPath = "C:\Program Files\VideoLAN\VLC\vlc.exe"

# Check if VLC is installed
if (-not (Test-Path $vlcPath)) {
    Write-Error "VLC is not installed at the expected location: $vlcPath"
    exit 1
}

# Construct the RTSP stream URL
$rtspUrl = "rtsp://$ipAddress/stream1"

# Construct the command line arguments
$args = @(
    $rtspUrl,
    ":rtsp-user=$username",
    ":rtsp-pwd=$password"
)

# Start VLC with the specified arguments
Start-Process -FilePath $vlcPath -ArgumentList $args