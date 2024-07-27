install_via_nix() {
    local PKG="$1"
    "$INST_AUTO_NIX_DIR/$PKG" > "$OUTPUT_DIR/nix_install_$PKG.txt" 2>&1
}
