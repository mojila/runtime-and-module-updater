#!/bin/sh

brew update
brew upgrade
brew cleanup

npm-check -u -g

rustup update
#rustup self update

pip3 list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip3 install -U
