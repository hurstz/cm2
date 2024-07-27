#!/bin/bash

if command -v wget >> /dev/null; then
	echo "wget is already installed."
else
	sudo apt-get update
	sudo apt-get -y install wget
fi

wget https://github.com/fastfetch-cli/fastfetch/releases/download/2.17.2/fastfetch-linux-amd64.deb
sudo mv fastfetch-linux-amd64.deb /var/cache/apt/archives/
sudo apt-get -y install /var/cache/apt/archives/fastfetch-linux-amd64.deb
sudo apt-get -y --fix-broken install
