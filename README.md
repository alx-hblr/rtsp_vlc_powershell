# rtsp_vlc_powershell
A quick powershell script to watch rtsp streams in vlc player

# VLC RTSP Stream Script Usage Guide

This guide explains how to use the PowerShell script for opening VLC media player and streaming from an RTSP source.

## Script Overview

The script automates the process of opening VLC and connecting to an RTSP stream from a network camera. Here's what it does:

1. Checks if VLC is installed on your system.
2. Constructs the RTSP URL using the provided IP address.
3. Launches VLC with the appropriate arguments to connect to the stream.

## Prerequisites

1. VLC media player installed on your Windows system.
2. PowerShell (comes pre-installed on modern Windows systems).
3. A network camera configured with RTSP streaming capabilities.

## Camera Configuration

Before using this script, ensure your network camera is properly configured:

1. The camera must be set up to stream via RTSP.
2. Username and password for accessing the camera stream must be configured on the camera itself.
3. Note the IP address of your camera on the local network.

## Network Requirements

This script is designed to work within a local network:

- By default, it will only work if your computer and the camera are on the same local network.
- If you need to access the camera from outside your local network, you'll need to set up port forwarding on your router. This is an advanced configuration and may have security implications.

## Using the Script

1. **Save the Script**: 
   - Copy the script into a text editor.
   - Save it with a `.ps1` extension (e.g., `open_vlc_stream.ps1`).

2. **Configure the Script**:
   Open the script in a text editor and modify the following variables at the top:

   ```powershell
   # Configuration variables
   # CHANGE THIS BEFORE RUNNING THIS SCRIPT:
   $ipAddress = "IP_ADDRESS"
   $username = "USERNAME"
   $password = "PASSWORD"
   ```

   - Replace `IP_ADDRESS` with your camera's IP address.
   - Replace `USERNAME` with the username configured on your camera.
   - Replace `PASSWORD` with the password configured on your camera.

3. **Verify VLC Path**:
   - Check if the VLC path in the script matches your VLC installation:
     ```powershell
     $vlcPath = "C:\Program Files\VideoLAN\VLC\vlc.exe"
     ```
   - Modify this path if VLC is installed in a different location on your system.

4. **Run the Script**:
   - Open PowerShell.
   - Navigate to the directory containing your script.
   - Run the script by typing:
     ```
     .\open_vlc_stream.ps1
     ```
   - Press Enter.

5. **Troubleshooting**:
   - If you receive an error about script execution, you may need to change the PowerShell execution policy:
     1. Open PowerShell as Administrator.
     2. Run: `Set-ExecutionPolicy RemoteSigned`
     3. Type 'Y' to confirm.
   - If VLC doesn't open, check the error message. It may indicate that VLC is not installed in the expected location.

## Security Considerations

- This script stores the camera username and password in plain text. Ensure the script file is stored securely.
- Consider using more secure methods for credential management in sensitive environments.

## Customization

- The script uses `/stream1` as the default stream path. If your camera uses a different path, modify the `$rtspUrl` line in the script accordingly.

By following this guide, you should be able to quickly set up and use the VLC RTSP streaming script. Remember to always keep your camera firmware and VLC player updated for the best performance and security.
