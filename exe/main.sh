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

install_via_apt apache2
install_via_apt bash
install_via_apt binutils
install_via_apt build-essential
install_via_apt bzip2
install_via_apt ca-certificates
install_via_apt cmake
install_via_apt curl
install_via_apt dnsutils
install_via_apt ffmpeg
install_via_apt gdb
install_via_apt git
install_via_apt gpg
install_via_apt libfuse2
install_via_apt make
install_via_apt nala
install_via_apt nasm
install_via_apt net-tools
install_via_apt nmap
install_via_apt openssh-server
install_via_apt python3
install_via_apt python3-pip
install_via_apt python3-venv
install_via_apt rsync
install_via_apt screen
install_via_apt socat
install_via_apt software-properties-common
install_via_apt sudo
install_via_apt tmux
install_via_apt tree
install_via_apt ufw # TODO: configure, enable ufw
install_via_apt unzip
install_via_apt wget
install_via_apt whois
install_via_apt xz-utils
install_via_apt zip

install_via_apt xorg 
install_via_apt i3
install_via_apt lightdm

install_via_apt feh

install_via_apt pulseaudio
install_via_apt pavucontrol

install_via_apt brightnessctl

install_via_apt maim
install_via_apt xclip
install_via_apt xdotool

install_via_apt lxappearance
install_via_apt pcmanfm

install_via_apt firefox-esr
install_via_apt gh

# get_nix # TODO
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
