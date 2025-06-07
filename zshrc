#Ras le bol des config zsh foireuses

function print_centered() {
  local lines=("${(@f)1}")
  local width=$(tput cols)
  for line in $lines; do
    local padding=$(( (width - ${#line}) / 2 ))
    printf "%${padding}s" ""
    print -P "%F{cyan}${line}%f"
  done
}

print_centered $'E z i n a   E z i n e z   E g i n a'


# Emplacement de Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"

# Thème portofino
ZSH_THEME="fino"

# Plugins utiles
plugins=(
  git
  z
  docker
  sudo
  history
  zsh-syntax-highlighting
  zsh-autosuggestions
)

# Chargement de Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Variables d'environnement Go
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# Historique Zsh
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt append_history       # Ajoute à l'historique sans écraser
setopt share_history        # Partage l'historique entre sessions
setopt hist_ignore_all_dups # Ignore les doublons
setopt correct              # Correction automatique de commande

# Complétion intelligente
autoload -Uz compinit
compinit


