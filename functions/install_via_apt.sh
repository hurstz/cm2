install_via_apt() {
    local PKG="$1"
    "$INST_AUTO_APT_DIR/$PKG" > "$OUTPUT_DIR/apt_install_$PKG.txt" 2>&1
}
