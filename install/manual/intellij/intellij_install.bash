#!/bin/bash

# For more information, visit:
# <https://www.jetbrains.com/help/idea/installation-guide.html>

wget https://download.jetbrains.com/idea/ideaIC-2024.1.4.tar.gz
sudo tar -xzf ideaIC-*.tar.gz -C /opt
rm ideaIC-2024.1.4.tar.gz

# For hacking dmenu:
# sudo ln -s /opt/idea-IC-241.18034.62/bin/idea.sh /usr/bin/intellij-idea-ce
