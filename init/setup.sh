#!/bin/bash

echo "====================================="
echo "Sourcing .zprofile.core"
source ../zsh/.zprofile.d/core.zsh

echo "====================================="
echo "Installing Tools"
echo "====================================="
echo "Checking for brew installation"
if command -v brew &>/dev/null; then
    echo "Brew install found. Skipping"
else
    echo "Brew install not found. Installing"
    NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)"
    eval $(/opt/homebrew/bin/brew shellenv)
fi

echo "====================================="
echo "Updating Homebrew"
brew update
brew upgrade

echo "====================================="
echo "Installing Homebrew Formulae"
BREW_FORMULAE=(
    "bat"
    "btop"
    "curl"
    "fd"
    "fx"
    "fzf"
    "glab"
    "gnu-sed"
    "helm"
    "derailed/k9s/k9s"
    "kafka"
    "kubectl"
    "lazydocker"
    "lazygit"
    "jq"
    "make"
    "maven"
    "minikube"
    "openjdk@17"
    "neovim"
    "starship"
    "stow"
    "tlrc"
    "ripgrep"
    "tmux"
    "uv"
    "yq"
    "zsh-completions"
)
for f in "${BREW_FORMULAE[@]}"; do
    brew install ${f}
done

echo "====================================="
echo "Installing Homebrew Casks"
BREW_CASKS=(
    "font-commit-mono-nerd-font"
    "gcloud-cli"
)
for f in "${BREW_CASKS[@]}"; do
    brew install --cask ${f}
done

echo "====================================="
echo "Installing Kitty Terminal"
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin

echo "====================================="
echo "Install Oh-My-Zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "====================================="
echo "All tools installed"

echo "====================================="
echo "Setting up symlinks"

stow ../bin
stow ../git-templates
stow ../gitui
stow ../k9s
stow ../kitty
stow ../nvim
stow ../starship
stow ../tmux
stow ../zsh
echo "Symlinks created"

echo "====================================="
