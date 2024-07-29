#   ____ _              _ _       _               _
#  / ___| | __ _  __ _ (_| )___  | |__   __ _ ___| |__  _ __ ___
# | |  _| |/ _` |/ _` || |// __| | '_ \ / _` / __| '_ \| '__/ __|
# | |_| | | (_| | (_| || | \__ \ | |_) | (_| \__ \ | | | | | (__
#  \____|_|\__,_|\__,_|/ | |___/ |_.__/ \__,_|___/_| |_|_|  \___|
#                    |__/

# aliases
## Kubernetes
alias k=kubecolor
source <(kubectl completion bash)
complete -o default -F __start_kubectl k
alias kgp='kubecolor get pods -A'

## Terraform
alias t=terraform
alias td='terraform-docs markdown table --output-file README.md --output-mode inject .'
alias tfmt='terraform fmt --recursive .'

## General
alias l='eza -l'
alias lt2='eza --tree --level=2 --long --icons --git'
alias lt4='eza --tree --level=4 --long --icons --git'
alias cat=bat

# Sourcing kubeconfig script
source ~/load-k8s-configs.sh

# History
export HISTFILE=~/.histfile
export HISTSIZE=25000
export SAVEHIST=25000
export HISTCONTROL=ignorespace

# Set vim as default editor
EDITOR=vim

# settings for brew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# loading starship
eval "$(starship init bash)"
