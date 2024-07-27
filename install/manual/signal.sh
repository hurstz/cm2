#!/bin/bash

# NOTE: These instructions only work for 64-bit Debian-based
# Linux distributions such as Ubuntu, Mint etc.
sudo apt-get update
sudo apt-get -y install wget gpg

# 1. Install our official public software signing key:
wget -O- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor > signal-desktop-keyring.gpg
cat signal-desktop-keyring.gpg | sudo tee /usr/share/keyrings/signal-desktop-keyring.gpg > /dev/null
rm signal-desktop-keyring.gpg

# 2. Add our repository to your list of repositories:
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' |\
  sudo tee /etc/apt/sources.list.d/signal-xenial.list

# 3. Update your package database and install Signal:
sudo apt-get update && sudo apt-get -y install signal-desktop

# For more information, visit:
# <https://signal.org/download/linux/>