#/bin/bash

################################################################################
# .env                                                                      HEAD
################################################################################

DIR="$(dirname "$(realpath "$0")")"
P_DIR="$(dirname "$DIR")"

ENV_FILE="$P_DIR/.env"

if [ -f "$ENV_FILE" ]; then
  source "$ENV_FILE"
else
  echo "ERROR (main.sh): .env file not found"
  exit 1
fi

################################################################################
# .env                                                                      TAIL
################################################################################
################################################################################
# functions                                                                 HEAD
################################################################################

for file in "$FUNCTIONS_DIR"/*; do
    [ -e "$file" ] || continue
    source "$file"
done

################################################################################
# functions                                                                 TAIL
################################################################################
################################################################################
# logic                                                                     HEAD
################################################################################

hello_world # OK

# TODO: Create function to make user a NOPASSWD sudoer

apt_update # OK
apt_upgrade # OK

rm -rf "$INST_AUTO_DIR" # TODO: make the directory removal a function with some protection

create_apt_scripts # OK
create_cargo_scripts # OK
create_flatpak_scripts # OK
create_nix_scripts # OK

rm -rf "$OUTPUT_DIR" # TODO: make these three lines a function
mkdir -p "$OUTPUT_DIR" # TODO: make these three lines a function
touch "$OUTPUT_DIR/.gitkeep" # TODO: make these three lines a function
<<MLC
while IFS= read -r package; do
    install_via_apt "$package"
done < "$MY_APT_PACKAGES"
MLC
# TODO: configure, enable ufw

# get_nix # TODO
while IFS= read -r package; do
    install_via_nix "$package"
done < "$MY_NIX_PACKAGES"
# install_via_nix {PACKAGE_NAME} # OK
# install_via_nix fastfetch
# install_via_nix feh
# install_via_nix fzf
# install_via_nix kitty
# install_via_nix htop
# install_via_nix neovim
# install_via_nix ranger
# install_via_nix ripgrep
# install_via_nix yazi

# get_flatpak # TODO
# add_flathub # TODO
<<COMMENT
while IFS= read -r package; do
    install_via_apt "$package"
done < "$MY_APT_PACKAGES"
COMMENT
# install_via_flatpak {PACKAGE_NAME} # TODO
# install_via_flatpak gimp # TODO
# install_via_flatpak com.discordapp.Discord
# install_via_flatpak md.obsidian.Obsidian
# install_via_flatpak qbittorrent # TODO
# install_via_flatpak vlc # TODO

# import_bashrc
# import_bash_aliases
# import_bash_functions

# import_i3_config
# import_kitty_config

# startx # TODO

################################################################################
# logic                                                                     TAIL
################################################################################
