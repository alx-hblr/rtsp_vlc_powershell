@echo off
setlocal EnableDelayedExpansion

rem Configuration variables
rem CHANGE THIS BEFORE RUNNING THIS SCRIPT:
set "ipAddress=IP_ADDRESS"
set "username=USERNAME"
set "password=PASSWORD"

rem Path to VLC executable
set "vlcPath=C:\Program Files\VideoLAN\VLC\vlc.exe"

rem Check if VLC is installed
if not exist "%vlcPath%" (
    echo Error: VLC is not installed at the expected location: %vlcPath%
    exit /b 1
)

rem Construct the RTSP stream URL
set "rtspUrl=rtsp://%ipAddress%/stream1"

rem Start VLC with the specified arguments
start "" "%vlcPath%" %rtspUrl% :rtsp-user=%username% :rtsp-pwd=%password%