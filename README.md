<p align="center"><a name="top" href="#Details"><img height="60%" width="100%" src="https://dotfiles.github.io/images/dotfiles-logo.png"></a></p>

This repository hosts my dotfiles.
The setup is performed through Ansible, this takes care of installation of
software as well as symlink creation using [GNU Stow](https://www.gnu.org/software/stow/).


## Requirements

Use either macOS or Arch

## Usage

``` bash
# Clone repo locally:
git clone https//www.github.com/glaaj/dotfiles`

# Run `install.sh` to install Ansible using pip
./install.sh

# Run Ansible playbook
ansible-playbook dotfiles_setup.yaml --ask-become-pass
```
