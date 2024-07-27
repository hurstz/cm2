#!/bin/bash

DIR="$(dirname "$(realpath "$0")")"

BG_NAME="xfce4-terminal_background.jpg"
BG_FILE="$DIR/$BG_NAME"

BG_DEST="$HOME/Pictures/Backgrounds"

mkdir -p "$BG_DEST"
cp "$BG_FILE" "$BG_DEST"
