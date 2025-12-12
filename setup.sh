#!/bin/bash

#install_packages
yay -S --needed - < package_list.txt

# run stow to create symlinks
stow . --adopt --target ~ --verbose 1
git reset .
