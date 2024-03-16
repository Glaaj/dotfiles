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
ln -sf "$PWD/k9s/skin.yml" "$XDG_CONFIG_HOME"/k9s/skin.yml
ln -sf "$PWD/bat/config" "$HOME"/bat/config

# Packages

## Update package list
sudo apt update

## Install packages
##
sudo apt install kubectl kubectx derailed/k9s/k9s \
  vim tree bat exa htop
