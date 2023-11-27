# aliases
alias k=kubecolor
alias t=terraform
alias l='exa -l'
alias lt='exa --tree --level=2 --long --icons --git'
alias cat=bat

# sourcing kubeconfig script
source ~/scripts/load-k8s-configs.sh

# setting default editor
export EDITOR='vim'

# history settings
export HISTFILE=~/.zsh_history
export HISTSIZE=100000

# loading starship prompt
eval "$(starship init zsh)"
