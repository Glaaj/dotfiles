#!/bin/bash

# This is the setup script for my config. The idea is to be able to run
# this after cloning the repo on a debian based system and be up
# and running very quickly.

# create directories
export XDG_CONFIG_HOME="$HOME"/.config
mkdir -p "$XDG_CONFIG_HOME"/bash
mkdir -p "$XDG_CONFIG_HOME"/k9s
mkdir -p "$XDG_CONFIG_HOME"/bat

# Symbolic links
ln -sf "$PWD/.bash_profile" "$HOME"/.bash_profile
ln -sf "$PWD/.bashrc" "$HOME"/.bashrc
ln -sf "$PWD/.vimrc" "$HOME"/.vimrc
ln -sf "$PWD/k9s/skin.yml" "$XDG_CONFIG_HOME"/k9s/skin.yml
ln -sf "$PWD/bat/bat.conf" "$HOME"/bat/bat.conf

# Packages
## Update package list
sudo apt update

# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

## Install packages using brew
brew install kubectl kubectx derailed/k9s/k9s vim tree bat exa htop starship
