#!/bin/bash

mkdir -p ~/.bash_completion
DIR="$(dirname "$(realpath "$0")")"
C_DIR="$DIR/alacritty_repository"
cp "$C_DIR/extra/completions/alacritty.bash" ~/.bash_completion/alacritty
echo "" >> ~/.bashrc # Whitespace
echo "source ~/.bash_completion/alacritty" >> ~/.bashrc