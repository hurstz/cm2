#!/bin/bash

##################
#                #
#   IDENTITIES   #
#                #
##################

# Hardcoded (previous version used a .json file parsed)
identities=(
    "hurstz,172552088+hurstz@users.noreply.github.com"
    "example-name,name@example.com"
)

#################
#               #
#   FUNCTIONS   #
#               #
#################

# Display identities and choose
choose_identity() {
    echo # Whitespace
    echo "Available identities:"
    for i in "${!identities[@]}"; do
        echo "$((i+1)). ${identities[$i]}"
    done

    echo # Whitespace
    read -p "Choose an identity by list number: " choice
    if ! [[ "$choice" =~ ^[0-9]+$ ]] || [ "$choice" -le 0 ] || [ "$choice" -gt "${#identities[@]}" ]; then
        echo "Invalid choice."
        exit 1
    fi

    selected_identity=${identities[$((choice-1))]}
    name=$(echo "$selected_identity" | cut -d',' -f1)
    email=$(echo "$selected_identity" | cut -d',' -f2)
}

# Confirmation prompt
prompt_confirm() {
    while true; do
        read -p "$1 [y/n]: " yn
        case $yn in
            [Yy]* ) return 0;;
            [Nn]* ) return 1;;
            * ) echo "Please answer yes or no.";;
        esac
    done
}

##################
#                #
#   MAIN LOGIC   #
#                #
##################

choose_identity

printf "\nIdentity selected:\n$name <$email>\n\n"

# Name confirmation
if ! prompt_confirm "Is the selected name correct?"; then
    echo "Confirmation rejected. Exiting."
    exit 1
fi

# Confirm email
if ! prompt_confirm "Is the selected email correct?"; then
    echo "Confirmation rejected. Exiting."
    exit 1
fi

# Set git configurations
git config --global user.name "$name"
git config --global user.email "$email"
git config --global init.defaultBranch main
git config --global color.ui auto
git config --global pull.rebase false

# Display git configurations for user.name and user.email
echo # Whitespace
git config --list | grep "user.name" && git config --list | grep "user.email"
echo # Whitespace
