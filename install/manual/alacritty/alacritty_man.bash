#!/bin/bash

# Additional dependencies
sudo apt-get update
sudo apt-get -y install gzip scdoc

DIR="$(dirname "$(realpath "$0")")"
C_DIR="$DIR/alacritty_repository"

sudo mkdir -p /usr/local/share/man/man1
sudo mkdir -p /usr/local/share/man/man5
cd "$C_DIR"
scdoc < extra/man/alacritty.1.scd | gzip -c | sudo tee /usr/local/share/man/man1/alacritty.1.gz > /dev/null
scdoc < extra/man/alacritty-msg.1.scd | gzip -c | sudo tee /usr/local/share/man/man1/alacritty-msg.1.gz > /dev/null
scdoc < extra/man/alacritty.5.scd | gzip -c | sudo tee /usr/local/share/man/man5/alacritty.5.gz > /dev/null
scdoc < extra/man/alacritty-bindings.5.scd | gzip -c | sudo tee /usr/local/share/man/man5/alacritty-bindings.5.gz > /dev/null
cd -
