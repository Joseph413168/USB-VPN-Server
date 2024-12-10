#!/bin/bash

echo "Starting OpenVPN Server..."
cd "$(dirname "$0")"

if [ ! -f "keys/server.key" ]; then
    echo "Error: Keys folder or server.key not found. Ensure all required files are in the USB drive."
    exit 1
fi

sudo openvpn --config server.ovpn
