# Fix this later. Issue with SweetUpdate trying to manage Docker
export ZSH_DISABLE_COMPFIX=true
plugins=(git dotenv virtualenv kubectl helm)

# Set directory for .zcompdump-* files
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST
source $ZSH/oh-my-zsh.sh

# Cache `starship init`; regenerate only when the starship binary changes.
# Saves the init subprocess (~0.15s) per shell. The prompt still renders live
# (PROMPT/RPROMPT are single-quoted); the session key uses literal $RANDOM so it
# stays per-shell-unique when sourced. Only the one-time init spawn is removed.
_starship_init="$HOME/.cache/starship-init.zsh"
if [[ ! -s $_starship_init || $(command -v starship) -nt $_starship_init ]]; then
    mkdir -p "${_starship_init:h}"
    starship init zsh > $_starship_init 2>/dev/null
fi
source $_starship_init
unset _starship_init

if [ -e "$DOTFILES/zsh/.zshrc.sweetwater" ]; then
    source "$DOTFILES/zsh/.zshrc.sweetwater"
fi
source $ZSH

source ${HOMEBREW_PREFIX}/share/zsh-autosuggestions/zsh-autosuggestions.zsh

export K9S_CONFIG_DIR="${HOME}/.config/k9s"
export PATH="/usr/local/opt/postgresql@16/bin:$PATH"
#######################################################################
# Custom Aliases
alias docs="cd $HOME/Documents"
alias repos="cd $HOME/Repositories"
alias lg="lazygit"
alias ld="lazydocker"

#######################################################################
# Key Bindings

## Custom Script
bindkey -s ^f "tmux-sessionizer\n"

## zsh-autosuggestions
bindkey '^E' end-of-line
bindkey '^ ' forward-word

# sweetctl completion is cached in .zshrc.sweetwater (Sweetwater-specific)

export NVM_DIR="$HOME/.nvm"
# node/npm/npx are already on PATH below, so nvm itself is lazy-loaded:
# sourcing nvm.sh eagerly runs nvm_auto (~4.5s per shell). Defer it until
# `nvm` is actually invoked.
nvm() {
  unset -f nvm
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # nvm bash_completion
  nvm "$@"
}
export PATH="$HOME/.nvm/versions/node/v24.18.0/bin:$PATH"
export PATH="/usr/local/opt/mysql-client/bin:$PATH"
