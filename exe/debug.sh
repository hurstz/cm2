#!/bin/bash

# path variables relative to the exe/ directory
DIR="$(dirname "$(realpath "$0")")" # script directory
P_DIR="$(dirname "$DIR")" # parent directory

# source the .env file
ENV_FILE="$P_DIR/.env"
if [ -f "$ENV_FILE" ]; then
  source "$ENV_FILE"
else
  echo "No .env file found in $P_DIR"
  exit 1
fi

# print all variables from the .env file
echo "Environment variables from .env file:"
while IFS= read -r line || [ -n "$line" ]; do
  if [[ ! "$line" =~ ^# && "$line" =~ = ]]; then
    var_name=$(echo "$line" | cut -d '=' -f 1)
    var_value=$(eval echo "\$$var_name")
    echo "$var_name=\"$var_value\""
  fi
done < "$ENV_FILE"
