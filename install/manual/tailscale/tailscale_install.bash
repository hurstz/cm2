#!/bin/bash

# For more information, visit:
# <https://tailscale.com/download/linux>

# Install curl if it is not installed
if command -v curl > /dev/null; then
    echo "curl is already installed."
else
    sudo apt-get update
    sudo apt-get -y install curl
fi

curl -fsSL https://tailscale.com/install.sh | sh

