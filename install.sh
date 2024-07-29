#!/bin/bash

set -e

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    echo "The string 'linux-gnu' was found"
    sudo pacman -S python-ansible
fi

if [[ "$OSTYPE" == "darwin*" ]]; then
    echo "The string 'darwin' was found"
    pip3 install ansible
fi

export PATH="$PATH:~/.local/bin"
ansible-galaxy install -r requirements.yaml
