# Fix this later. Issue with SweetUpdate trying to manage Docker
export ZSH_DISABLE_COMPFIX=true
plugins=(git dotenv virtualenv kubectl helm)

# Set directory for .zcompdump-* files
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST
source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"

if [ -e "$DOTFILES/zsh/.zshrc.sweetwater" ]; then
    source "$DOTFILES/zsh/.zshrc.sweetwater"
fi
source $ZSH

export K9S_CONFIG_DIR="${HOME}/.config/k9s"
#######################################################################
# Custom Aliases
alias docs="cd $HOME/Documents"
alias repos="cd $HOME/Repositories"
alias lg="lazygit"
alias ld="lazydocker"

#######################################################################
# Key Bindings
bindkey -s ^f "tmux-sessionizer\n"
