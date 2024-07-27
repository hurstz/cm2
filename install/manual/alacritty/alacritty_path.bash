#!/bin/bash

DIR="$(dirname "$(realpath "$0")")"
C_DIR="$DIR/alacritty_repository"
sudo cp "$C_DIR/target/release/alacritty" /usr/local/bin
sudo cp "$C_DIR/extra/logo/alacritty-term.svg" /usr/share/pixmaps/Alacritty.svg
# sudo desktop-file-install extra/linux/Alacritty.desktop # Unused
# sudo update-desktop-database # Unused