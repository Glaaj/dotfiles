#    ___|  |               _)  )           |                   |
#   |      |   _` |   _` |  | /   __|      __ \    _` |   __|  __ \    __|  __|
#   |   |  |  (   |  (   |  |   \__ \      |   |  (   | \__ \  | | |  |    (
#  \____| _| \__,_| \__,_|  |   ____/     _.__/  \__,_| ____/ _| |_| _|   \___|
#                       ___/

# aliases
## Kubernetes
alias k=kubectl
source <(kubectl completion bash)
complete -o default -F __start_kubectl k
alias kgp='kubecolor get pods -A'

## Terraform
alias t=terraform
alias td='terraform-docs markdown table --output-file README.md --output-mode inject .'
alias tfmt='terraform fmt --recursive .'

## General
alias l='exa -l'
alias lt='exa --tree --level=2 --long --icons --git'
alias cat=bat

# Sourcing kubeconfig script
source ~/scripts/load-k8s-configs.sh

# History
export HISTFILE=~/.histfile
export HISTSIZE=25000
export SAVEHIST=25000
export HISTCONTROL=ignorespace

# loading starship
eval "$(starship init bash)"
