#!/bin/bash

if command -v wget >> /dev/null; then
	echo "wget is already installed."
else
	sudo apt-get update
	sudo apt-get -y install wget
fi

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

sudo mv google-chrome-stable_current_amd64.deb /var/cache/apt/archives/

sudo apt -y install /var/cache/apt/archives/google-chrome-stable_current_amd64.deb
sudo apt -y --fix-broken install
