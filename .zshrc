# aliases
alias k=kubecolor
alias t=terraform
alias l='exa -l'
alias cat=bat
alias vim=nvim

# sourcing kubeconfig script
source ~/scripts/load-k8s-configs.sh

# setting default editor
export EDITOR='nvim'

# history settings
export HISTFILE=~/.zsh_history
export HISTSIZE=100000

# loading starship prompt
eval "$(starship init zsh)"
