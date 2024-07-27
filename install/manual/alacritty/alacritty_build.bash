#!/bin/bash

DIR="$(dirname "$(realpath "$0")")"
C_DIR="$DIR/alacritty_repository"
cd "$C_DIR"
cargo build --release
cd -
