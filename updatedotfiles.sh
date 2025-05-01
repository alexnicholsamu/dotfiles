#!/bin/bash

# This script updates the dotfiles in the home directory with the latest versions from the repository.
# It also creates symbolic links for the dotfiles in the home directory.
# Usage: ./updatedotfiles.sh
# Check if the script is run from the correct directory

cp ~/.bashrc ~/dotfiles/bash/.bashrc
cp ~/Library/Application\ Support/Code/User/settings.json ~/dotfiles/vscode/settings.json
cd ~/dotfiles
git add .
git commit -m "Sync latest changes"
git push

echo "Dotfiles updated and pushed to the repository."