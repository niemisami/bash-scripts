#!/bin/bash

set -e

apt-get update

# Vim
apt-get vim
apt-get install fonts-powerline # fonts for vim-airline (powerline)
# Visual Studio Code

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

# SQLite browser


apt-get install code
