#!/bin/bash

# Greeting Aliases (used for testing, mostly)
alias hey='echo "Hey, World!"'
alias hello='echo "Hello, World!"'
alias hi='echo "Hi, World!"'
alias howdy='echo "Howdy, World!"'
alias yo='echo "Yo, World!"'

# System Commands
alias poweroff='sudo shutdown now'
alias reboot='sudo reboot'

# Bash Configuration
alias reload='source ~/.bashrc'

# Package Management
alias upd='sudo apt update'
alias update='sudo apt update'
alias upg='sudo apt -y upgrade'
alias upgrade='sudo apt -y upgrade'
alias i='sudo apt -y install'
alias inst='sudo apt -y install'
alias install='sudo apt -y install'
alias fix='sudo apt --fix-broken -y install'
alias fix-broken='sudo apt --fix-broken -y install'
alias depends='sudo apt depends'
alias remove='sudo apt -y remove'
alias purge='sudo apt -y purge'
alias autoremove='sudo apt -y autoremove'

# Listing Aliases
alias l='ls -CF'
alias la='ls -a'
alias ll='ls -l'
alias l1='ls -1'
alias ls='ls --color=auto'

# Directory aliases
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'

# Permissions Aliases
alias cmx='chmod +x'
alias chmodx='chmod +x'

# Grep Aliases
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Git Aliases
alias ga='git add'
alias gc='git commit'
alias gcm='git commit -m'
alias gca='git commit --amend'
alias gp='git push'

# Python Aliases
alias py='python3'
alias python='python3'

# Custom Function Aliases
alias v='version'
