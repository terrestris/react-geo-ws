#!/bin/bash

# Tastaturlayout
setxkbmap de

# Editor
wget -o https://github.com/atom/atom/releases/download/v1.24.0/atom-amd64.deb
sudo dpkg -i ./atom-amd64.deb
sudo apt-get -f install -y

# NVM / NPM
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
nvm i v8
