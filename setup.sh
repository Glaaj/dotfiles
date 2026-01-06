#!/bin/bash

#install_packages
yay -S --needed - <package_list.txt

# run stow to create symlinks
stow . --adopt --target ~ --verbose 1
git reset .

# add user to docker group
sudo usermod -aG docker $USER

# enable and start docker service
sudo systemctl enable docker.service
sudo systemctl start docker.service