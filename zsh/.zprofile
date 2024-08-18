export DOTFILES=$HOME/.dotfiles
export PATH="$PATH;$HOME/.local/scripts"

# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"
alias brew='env PATH="${PATH//$(pyenv root)\/shims:/}" brew'
