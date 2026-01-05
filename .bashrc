###
# Glaaj's .bashrc
###

# Env vars
## History
export HISTFILE=~/.bash_history
export HISTSIZE=25000
export SAVEHIST=25000
export HISTCONTROL=ignorespace

## Set colors for manpage output
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

## Set neovim as default editor
export EDITOR=nvim

## k9s
export K9S_CONFIG_DIR=~/.config/k9s

## bat
export BAT_CONFIG_PATH=~/.config/bat/config

# Aliases
## Kubernetes
alias k=kubecolor
alias kgp='kubecolor get pods -A'

## Terraform
alias t=terraform
alias td='terraform-docs markdown table --output-file README.md --output-mode inject .'
alias tfmt='terraform fmt --recursive .'

## General
fe() { fzf -m --preview='bat --style=numbers --color=always {}' --bind 'enter:become(nvim {+})'; }

alias ls='eza -lh --group-directories-first --icons=auto'
alias l='eza -l'
alias lt='eza --tree --level=2 --long --icons --git'
alias lta='lt -a'
alias cat=bat
alias lg='lazygit'

# loading zoxide
eval "$(zoxide init bash)"

# loading starship prompt
eval "$(starship init bash)"
