#!/bin/bash

# BEGIN load environment variables

DIR="$(dirname "$(realpath "$0")")"
P_DIR="$(dirname $DIR)"

# load environment variables
if [[ -f "$P_DIR/.env" ]]; then
  source "$P_DIR/.env"
else
  echo ".env file not found!"
  exit 1
fi

cd "$PROJ_ROOT"

# END load environment variables

python3 "$HELPERS_DIR/map.py"

read -p "Add, commit, and push all changes now? (y/n): " response

if [[ "$response" == "y" || "$response" == "Y" ]]; then
    git add .
    git commit -m "$TIMESTAMP"
    git push
else
    echo "OK."
fi

cd -
