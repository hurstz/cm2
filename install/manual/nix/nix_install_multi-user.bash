#!/bin/bash

# For more information, visit:
# <https://nixos.org/download/>

# Install curl if it is not installed
if command -v curl > /dev/null; then
    echo "curl is already installed."
else
    sudo apt-get update
    sudo apt-get -y install curl
fi

sh <(curl -L https://nixos.org/nix/install) --daemon
