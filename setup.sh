#!/bin/bash

# Use all CPU cores for AUR builds to speed compilation
MAKEFLAGS="-j$(nproc)"
export MAKEFLAGS

sudo pacman -Sy

#install_packages
yay -S --needed --noconfirm - <package_list.txt

# run stow to create symlinks
stow . --adopt --target ~ --verbose 1
git reset .

# add user to docker group
sudo usermod -aG docker "$USER"

# enable and start docker service
sudo systemctl enable docker.service
sudo systemctl start docker.service