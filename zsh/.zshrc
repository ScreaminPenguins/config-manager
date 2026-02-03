# Work stuff
if [ -e "$HOME/.custom_brew" ]; then
  source "$HOME/.custom_brew"
fi

# Fix this later. Issue with SweetUpdate trying to manage Docker
export ZSH_DISABLE_COMPFIX=true
plugins=(git dotenv virtualenv kubectl helm)

source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"

source /opt/homebrew/share/google-cloud-sdk/completion.zsh.inc

#######################################################################
# Custom Aliases
alias docs="cd $HOME/Documents"
alias repos="cd $HOME/Repositories"
alias lg="lazygit"
alias ld="lazydocker"

#######################################################################
# Key Bindings
bindkey -s ^f "tmux-sessionizer\n"
