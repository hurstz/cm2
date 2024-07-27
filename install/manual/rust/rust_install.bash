#!/bin/bash

# Install curl if it is not installed
if command -v curl > /dev/null; then
    echo "curl is already installed."
else
    sudo apt-get update
    sudo apt-get -y install curl
fi

# Add whitespace prior to installer adding line: . "$HOME/.cargo/env"
echo >> "$HOME/.bashrc"

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
