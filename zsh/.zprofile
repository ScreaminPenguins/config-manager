#######################################################################
# Custom Items
export DOTFILES=$HOME/dotfiles
export PATH="$PATH:$HOME/.local/scripts"

alias docs="cd $HOME/Documents"
alias repos="cd $HOME/Repositories"

bindkey -s ^f "tmux-sessionizer\n"
#######################################################################
# Homebrew Items
eval $(/opt/homebrew/bin/brew shellenv)
# export HOMEBREW_PREFIX="/opt/homebrew";
# export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
# export HOMEBREW_REPOSITORY="/opt/homebrew";
# export MANPATH="/opt/homebrew/share/man${MANPATH+:$MANPATH}:";
# export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}";
# export PATH="/opt/homebrew/bin:/opt/homebrew/sbin${PATH+:$PATH}";

# alias brew='env PATH="${PATH//$(pyenv root)\/shims:/}" brew'
# if type brew &>/dev/null; then
#   FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
#
#   autoload -Uz compinit
#   compinit
# fi
#######################################################################
# Pyenv Items
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

eval "$(pyenv init --path)"

#######################################################################
# Pipenv Items
export PIPENV_VERBOSITY=-1

#######################################################################
# # Eza
# alias e='eza'

#######################################################################
# K9s
# alias k9s='k9s --context $(command kubectl config get-contexts -o name | fzf)'
