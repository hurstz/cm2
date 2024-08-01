# Project File Structure
```
├── bin/
│ └── .gitkeep
├── dotfiles/
│ ├── etc/
│ │ ├── X11/
│ │ │ ├── xinit/
│ │ │ │ ├── xinitrc
│ │ │ │ └── xserverrc
│ │ │ └── .xsessionrc
│ │ ├── apache2/
│ │ │ └── apache2.conf
│ │ ├── lightdm/
│ │ │ └── lightdm.conf
│ │ └── i3status.conf
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
│ ├── my_apt_packages.list
│ ├── my_cargo_packages.list
│ ├── my_flatpak_packages.list
│ ├── my_nix_packages.list
│ └── nix_packages.list
├── media/
│ ├── desktop_wallpaper.jpg
│ ├── repository_card.png
│ └── terminal_background.jpg
├── output/
│ ├── .gitkeep
│ └── nix_install_obsidian.txt
├── output.bak/
│ ├── apt_install_apache2.txt
│ ├── apt_install_bash.txt
│ ├── apt_install_binutils.txt
│ ├── apt_install_brightnessctl.txt
│ ├── apt_install_build-essential.txt
│ ├── apt_install_bzip2.txt
│ ├── apt_install_ca-certificates.txt
│ ├── apt_install_cmake.txt
│ ├── apt_install_curl.txt
│ ├── apt_install_dnsutils.txt
│ ├── apt_install_feh.txt
│ ├── apt_install_ffmpeg.txt
│ ├── apt_install_firefox-esr.txt
│ ├── apt_install_gdb.txt
│ ├── apt_install_gh.txt
│ ├── apt_install_git.txt
│ ├── apt_install_gpg.txt
│ ├── apt_install_i3.txt
│ ├── apt_install_libfuse2.txt
│ ├── apt_install_lightdm.txt
│ ├── apt_install_lxappearance.txt
│ ├── apt_install_maim.txt
│ ├── apt_install_make.txt
│ ├── apt_install_nala.txt
│ ├── apt_install_nasm.txt
│ ├── apt_install_net-tools.txt
│ ├── apt_install_nmap.txt
│ ├── apt_install_openssh-server.txt
│ ├── apt_install_pavucontrol.txt
│ ├── apt_install_pcmanfm.txt
│ ├── apt_install_pulseaudio.txt
│ ├── apt_install_python3-pip.txt
│ ├── apt_install_python3-venv.txt
│ ├── apt_install_python3.txt
│ ├── apt_install_rsync.txt
│ ├── apt_install_screen.txt
│ ├── apt_install_socat.txt
│ ├── apt_install_software-properties-common.txt
│ ├── apt_install_sudo.txt
│ ├── apt_install_tmux.txt
│ ├── apt_install_tree.txt
│ ├── apt_install_ufw.txt
│ ├── apt_install_unzip.txt
│ ├── apt_install_wget.txt
│ ├── apt_install_whois.txt
│ ├── apt_install_xclip.txt
│ ├── apt_install_xdotool.txt
│ ├── apt_install_xorg.txt
│ ├── apt_install_xz-utils.txt
│ └── apt_install_zip.txt
├── .env
├── .gitignore
├── LICENSE
└── README.md
```
