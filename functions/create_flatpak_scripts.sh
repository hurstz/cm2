create_flatpak_scripts() {
  if [[ ! -f "$FLATPAK_PACKAGES_LIST" ]]; then
    exit 1
  fi

  mkdir -p "$INST_AUTO_FLATPAK_DIR"

  while IFS= read -r package; do
    cat <<EOL > "$INST_AUTO_FLATPAK_DIR/$package"
#!/bin/bash
N="\$(basename "\$(realpath "\$0")")"
flatpak install -y flathub "\$N"
EOL
    chmod +x "$INST_AUTO_FLATPAK_DIR/$package"
  done < "$FLATPAK_PACKAGES_LIST"
}
