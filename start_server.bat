@echo off
echo Starting OpenVPN Server...
cd %~dp0
if not exist "keys\server.key" (
    echo Error: Keys folder or server.key not found. Ensure all required files are in the USB drive.
    pause
    exit /b
)
"C:\Program Files\OpenVPN\bin\openvpn.exe" --config server.ovpn
pause
