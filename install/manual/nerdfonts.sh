#!/bin/bash
sudo apt update
sudo apt -y install curl unzip
mkdir ComicShannsMono
cd ComicShannsMono
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/ComicShannsMono.zip
unzip ComicShannsMono.zip
rm ComicShannsMono.zip
cd ..
sudo mv ComicShannsMono /usr/share/fonts
fc-cache -f -v
