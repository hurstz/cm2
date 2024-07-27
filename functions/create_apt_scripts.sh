create_apt_scripts() {
  if [[ ! -f "$APT_PACKAGES_LIST" ]]; then
    exit 1
  fi

  mkdir -p "$INST_AUTO_APT_DIR"

  while IFS= read -r package; do
    cat <<EOL > "$INST_AUTO_APT_DIR/$package"
#!/bin/bash
N="\$(basename "\$(realpath "\$0")")"
sudo apt-get -y install "\$N"
EOL
    chmod +x "$INST_AUTO_APT_DIR/$package"
  done < "$APT_PACKAGES_LIST"
}
