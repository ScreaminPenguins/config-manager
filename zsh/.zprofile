#######################################################################
# PATH & Environment Variables
export DOTFILES=$HOME/dotfiles
export PATH="$PATH:$HOME/.local/scripts"

eval $(/usr/local/bin/brew shellenv)

export ZSH="$HOME/.oh-my-zsh"

# TODO: removte this - only needed for specific project
# export PATH="/opt/homebrew/opt/php@8.2/sbin:$PATH"

# TODO: what is this?
export PATH="$PATH:/Users/ash_gent/Library/Application Support/Coursier/bin"

# Java
# export PATH="/opt/homebrew/opt/openjdk@21/bin:$PATH"
# export PATH="/opt/homebrew/opt/openjdk@21/bin:$PATH"
