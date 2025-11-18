# Work stuff
if [ -e "$HOME/.custom_brew" ]; then
  source "$HOME/.custom_brew"
fi

plugins=(git dotenv virtualenv kubectl helm)
source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"

#######################################################################
# Custom Aliases
alias docs="cd $HOME/Documents"
alias repos="cd $HOME/Repositories"
alias lg="lazygit"

#######################################################################
# Key Bindings
bindkey -s ^f "tmux-sessionizer\n"
