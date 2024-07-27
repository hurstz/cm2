#!/bin/bash

sudo apt update
sudo apt-get -y install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3

# Install curl if it is not installed
if command -v curl > /dev/null; then
    echo "curl is already installed."
else
    sudo apt-get -y install curl
fi


DIR="$(dirname "$(realpath "$0")")"
P_DIR="$(dirname "$DIR")"
PROJ_ROOT="$P_DIR"

# Install curl if it is not installed
if command -v rustc > /dev/null; then
    echo "rustc is already installed."
else
    "$PROJ_ROOT/rust/rust_install.bash"
    "$PROJ_ROOT/rust/rust_load.bash"
fi

