#!/usr/bin/env bash

# This config will make your terminal great again, trust me.
git config --global oh-my-zsh.hide-info 1

# *nix
git config --global core.autocrlf input

# Windows
# git config --global core.autocrlf true

# Windows-only
# git config --global core.autocrlf false

# # Upgrade all Python packages
# python3 -m pip list --outdated \
#         | awk 'BEGIN { FS = "==" } NR > 2 { print $2 }' \
#         | xargs python3 -m pip install --upgrade

# Install required Python packages
# This automatically calls the user space config/requirements.txt
# python3 -m pip install --requirement "_tex/config/requirements.txt"
