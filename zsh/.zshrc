#######################################################################
# Custom Brew Items
if [ -e "$HOME/.custom_brew" ]; then 
  source "$HOME/.custom_brew"
fi

#######################################################################
# Oh-My-Zsh
export ZSH="$HOME/.oh-my-zsh"

plugins=(git dotenv pyenv virtualenv)
source $ZSH/oh-my-zsh.sh

#######################################################################
# Starship
eval "$(starship init zsh)"
#
#######################################################################
