#!/bin/bash

# Set environment variables
./env_vars.sh

# Get confirmation from user
read -p "Are you sure you want to overwrite "$SCRIPT" with content from "$REPO"/"$REPO_SCRIPT"? (y/n): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE] ]] || exit 1

# Overwrite working code file with repo code file
rm "$SCRIPT"
cp "$REPO"/"$REPO_SCRIPT" "$SCRIPT"

echo "Script successfully updated!"
