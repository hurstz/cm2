#!/bin/bash
# For more information, visit:
# <https://github.com/neovim/neovim/blob/master/INSTALL.md>
wget https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
rm nvim-linux64.tar.gz
# echo 'export PATH="$PATH:/opt/nvim-linux64/bin"' >> ~/.bashrc
printf "Don't forget to load a .bashrc file with the appropriate export statement and reload your shell!\n"
