#######################################################################
# PATH & Environment Variables
export DOTFILES=$HOME/dotfiles
export PATH="$PATH:$HOME/.local/scripts"
export PATH="/usr/local/bin:$PATH"
export PATH=/usr/local/share/google-cloud-sdk/bin:"$PATH"
# Cache `brew shellenv`; regenerate only when the brew binary changes.
# Avoids spawning brew (~0.25s) on every login shell. The cached output still
# contains a live `path_helper` call, so PATH is reconstructed fresh each time.
_brew_env="$HOME/.cache/brew-shellenv.zsh"
if [[ ! -s $_brew_env || /usr/local/bin/brew -nt $_brew_env ]]; then
    mkdir -p "${_brew_env:h}"
    /usr/local/bin/brew shellenv > $_brew_env 2>/dev/null
fi
source $_brew_env
unset _brew_env

export ZSH="$HOME/.oh-my-zsh"

# TODO: removte this - only needed for specific project
# export PATH="/opt/homebrew/opt/php@8.2/sbin:$PATH"

# TODO: what is this?
export PATH="$PATH:/Users/ash_gent/Library/Application Support/Coursier/bin"

# Java
# export PATH="/opt/homebrew/opt/openjdk@21/bin:$PATH"
# export PATH="/opt/homebrew/opt/openjdk@21/bin:$PATH"
