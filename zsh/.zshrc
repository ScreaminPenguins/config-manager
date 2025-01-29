#######################################################################
# Custom Brew Items
if [ -e "$HOME/.custom_brew" ]; then 
  source "$HOME/.custom_brew"
fi

#######################################################################
# zsh-autocomplete
# source $HOMEBREW_PREFIX/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh

#######################################################################
# Oh-My-Zsh
export ZSH="$HOME/.oh-my-zsh"

# plugins=(git dotenv pyenv virtualenv kubectl helm zsh-autosuggestions zsh-autocomplete)
plugins=(git dotenv pyenv virtualenv kubectl helm)
source $ZSH/oh-my-zsh.sh
source ~/.zprofile

# Starship
eval "$(starship init zsh)"
#
#######################################################################

# . "$HOME/.local/bin/env"
#######################################################################
# eza
# export EZA_CONFIG_DIR="$HOME/.config/eza"
