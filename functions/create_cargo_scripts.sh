create_cargo_scripts() {
  if [[ ! -f "$CARGO_PACKAGES_LIST" ]]; then
    exit 1
  fi

  mkdir -p "$INST_AUTO_CARGO_DIR"

  while IFS= read -r package; do
    cat <<EOL > "$INST_AUTO_CARGO_DIR/$package"
#!/bin/bash
N="\$(basename "\$(realpath "\$0")")"
cargo install "\$N"
EOL
    chmod +x "$INST_AUTO_CARGO_DIR/$package"
  done < "$CARGO_PACKAGES_LIST"
}
