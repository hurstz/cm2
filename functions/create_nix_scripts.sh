create_nix_scripts() {
  if [[ ! -f "$NIX_PACKAGES_LIST" ]]; then
    exit 1
  fi

  mkdir -p "$INST_AUTO_NIX_DIR"

  while IFS= read -r package; do
    cat <<EOL > "$INST_AUTO_NIX_DIR/$package"
#!/bin/bash
N="\$(basename "\$(realpath "\$0")")"
P="nixpkgs.\$N"
nix-env -iA \$P
L=\$(which "\$N")
sudo ln -s "\$L" "/usr/local/bin/\$N_nixpkg"
EOL
    chmod +x "$INST_AUTO_NIX_DIR/$package"
  done < "$NIX_PACKAGES_LIST"
}
