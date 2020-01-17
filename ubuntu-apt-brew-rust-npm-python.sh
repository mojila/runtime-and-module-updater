#!/bin/bash

sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y
sudo apt clean -y

brew update --verbose
brew upgrade --verbose
brew cleanup

npm i -g npm
npm-check -g -u

rustup update

#pip list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 pip install -U
pip3 list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 pip3 install -U

echo "Your System up to Date"
