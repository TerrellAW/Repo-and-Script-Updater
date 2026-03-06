#!/bin/bash

# Get initial working directory
initial_pwd="$PWD"

# Source the environment variables
 source env_vars.sh

# Get confirmation from user
read -p "Are you sure you want to overwrite "$REPO"/"$REPO_SCRIPT" with content from "$SCRIPT"? (y/n): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE] ]] || exit 1

# Get git commit message
read -p "Enter a commit message: " message

# Overwrite repo code file with working code file
rm "$REPO"/"$REPO_SCRIPT"
cp "$SCRIPT" "$REPO"/"$REPO_SCRIPT"
cd "$REPO"

# Use git commands to commit changes
git add .
git commit -m "$message"

# Return to initial working directory
cd "$initial_pwd"

echo "Change successfully commited!"
