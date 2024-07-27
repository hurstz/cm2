# Project File Structure
```
├── dotfiles/
│ ├── etc/
│ │ ├── X11/
│ │ │ ├── xinit/
│ │ │ │ ├── xinitrc
│ │ │ │ └── xserverrc
│ │ │ └── .xsessionrc
│ │ ├── apache2/
│ │ │ └── apache2.conf
│ │ └── lightdm/
│ │   └── lightdm.conf
│ └── home/
│   └── user/
│     ├── .config/
│     │ ├── i3/
│     │ │ └── config
│     │ ├── kitty/
│     │ │ └── kitty.conf
│     │ └── nvim/
│     │   ├── after/
│     │   │ └── plugin/
│     │   │   ├── colors.lua
│     │   │   ├── fugitive.lua
│     │   │   ├── harpoon.lua
│     │   │   ├── lsp-zero.lua
│     │   │   ├── telescope.lua
│     │   │   ├── treesitter.lua
│     │   │   └── undotree.lua
│     │   ├── hurstz/
│     │   │ └── hurstz/
│     │   │   ├── init.lua
│     │   │   ├── packer.lua
│     │   │   ├── remap.lua
│     │   │   └── set.lua
│     │   ├── plugin/
│     │   │ └── packer_compiled.lua
│     │   └── init.lua
│     ├── .Xmodmap
│     ├── .bash_aliases
│     ├── .bash_functions
│     ├── .bash_logout
│     ├── .bash_profile
│     ├── .bashrc
│     ├── .dmrc
│     ├── .fehbg
│     └── .gtkrc-2.0
├── exe/
│ ├── debug.sh
│ └── main.sh
├── functions/
│ ├── apt_update.sh
│ ├── apt_upgrade.sh
│ ├── create_apt_scripts.sh
│ ├── create_cargo_scripts.sh
│ ├── create_flatpak_scripts.sh
│ ├── create_nix_scripts.sh
│ ├── hello_world.sh
│ ├── install_via_apt.sh
│ └── install_via_nix.sh
├── helpers/
│ ├── autocommit.sh
│ ├── bin4git.c
│ ├── bin4tar.c
│ ├── gitconfig.sh
│ └── map.py
├── install/
│ ├── auto/
│ │ ├── apt/
│ │ │ ├── apache2
│ │ │ ├── bash
│ │ │ ├── binutils
│ │ │ ├── brightnessctl
│ │ │ ├── build-essential
│ │ │ ├── bzip2
│ │ │ ├── ca-certificates
│ │ │ ├── cmake
│ │ │ ├── cmatrix
│ │ │ ├── curl
│ │ │ ├── dnsutils
│ │ │ ├── feh
│ │ │ ├── ffmpeg
│ │ │ ├── firefox-esr
│ │ │ ├── flatpak
│ │ │ ├── fzf
│ │ │ ├── gdb
│ │ │ ├── gdm3
│ │ │ ├── gh
│ │ │ ├── gimp
│ │ │ ├── git
│ │ │ ├── gnome-boxes
│ │ │ ├── gnome-shell
│ │ │ ├── gnome-terminal
│ │ │ ├── gpg
│ │ │ ├── gvfs
│ │ │ ├── htop
│ │ │ ├── i3
│ │ │ ├── kitty
│ │ │ ├── libfuse2
│ │ │ ├── libgtk-3-0
│ │ │ ├── libgtk-3-dev
│ │ │ ├── libgtk2.0-0
│ │ │ ├── libvirt-clients
│ │ │ ├── lightdm
│ │ │ ├── lxappearance
│ │ │ ├── maim
│ │ │ ├── make
│ │ │ ├── mousepad
│ │ │ ├── nala
│ │ │ ├── nasm
│ │ │ ├── net-tools
│ │ │ ├── network-manager-gnome
│ │ │ ├── nmap
│ │ │ ├── openssh-server
│ │ │ ├── pavucontrol
│ │ │ ├── pcmanfm
│ │ │ ├── pulseaudio
│ │ │ ├── python3
│ │ │ ├── python3-pip
│ │ │ ├── python3-venv
│ │ │ ├── qbittorrent
│ │ │ ├── ripgrep
│ │ │ ├── rsync
│ │ │ ├── screen
│ │ │ ├── socat
│ │ │ ├── software-properties-common
│ │ │ ├── spice-vdagent
│ │ │ ├── sqlite3
│ │ │ ├── sudo
│ │ │ ├── thunar
│ │ │ ├── tmux
│ │ │ ├── tree
│ │ │ ├── ufw
│ │ │ ├── unzip
│ │ │ ├── vim
│ │ │ ├── vlc
│ │ │ ├── wget
│ │ │ ├── whois
│ │ │ ├── x11-server-utils
│ │ │ ├── xclip
│ │ │ ├── xdotool
│ │ │ ├── xfce4-terminal
│ │ │ ├── xorg
│ │ │ ├── xz-utils
│ │ │ └── zip
│ │ ├── cargo/
│ │ │ └── mdbook
│ │ ├── flatpak/
│ │ │ ├── com.discordapp.Discord
│ │ │ └── md.obsidian.Obsidian
│ │ └── nix/
│ │   ├── discord
│ │   ├── fastfetch
│ │   ├── feh
│ │   ├── kitty
│ │   ├── obsidian
│ │   ├── qbittorrent
│ │   ├── vlc
│ │   └── yazi
│ └── manual/
│   ├── alacritty/
│   │ ├── CATME.md
│   │ ├── alacritty_background.jpg
│   │ ├── alacritty_background_import.bash
│   │ ├── alacritty_build.bash
│   │ ├── alacritty_clone.bash
│   │ ├── alacritty_completions.bash
│   │ ├── alacritty_dependencies.bash
│   │ ├── alacritty_main.bash
│   │ ├── alacritty_man.bash
│   │ ├── alacritty_path.bash
│   │ └── alacritty_rm.bash
│   ├── docker-engine/
│   │ ├── docker-engine_add_repository.bash
│   │ ├── docker-engine_install.bash
│   │ └── docker-engine_test_run.bash
│   ├── intellij/
│   │ └── intellij_install.bash
│   ├── nix/
│   │ ├── nix_install_multi-user.bash
│   │ ├── nix_install_single-user.bash
│   │ └── nix_load_single-user.bash
│   ├── node/
│   │ └── node_install.bash
│   ├── nvm/
│   │ ├── nvm_install.bash
│   │ └── nvm_load.bash
│   ├── rust/
│   │ ├── rust_install.bash
│   │ └── rust_load.bash
│   ├── tailscale/
│   │ ├── tailscale_install.bash
│   │ └── tailscale_up.bash
│   ├── code.sh
│   ├── fastfetch.sh
│   ├── google-chrome.bash
│   ├── neovim.sh
│   ├── nerdfonts.sh
│   └── signal.sh
├── lists/
│ ├── apt_packages.list
│ ├── cargo_packages.list
│ ├── flatpak_packages.list
│ └── nix_packages.list
├── media/
│ ├── desktop_wallpaper.jpg
│ ├── repository_card.png
│ └── terminal_background.jpg
├── .env
├── .gitignore
├── LICENSE
└── README.md
```
