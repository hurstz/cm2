#!/bin/bash

DIR="$(dirname "$(realpath "$0")")"
C_DIR="$DIR/alacritty_repository"
mkdir -p "$C_DIR"
git clone https://github.com/alacritty/alacritty.git "$C_DIR"
