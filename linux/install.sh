#!/bin/bash

# Check if Zsh is installed
if ! command -v zsh &> /dev/null; then
    echo "Zsh is not installed. Please install it first."
    exit 1
fi

# Check if Oh-My-Zsh is installed
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "Oh-My-Zsh is not installed. Please install it first."
    exit 1
fi

# Stop on errors
set -e

# Set Zsh as default shell
chsh -s $(which zsh)

# Set Environment Variables
export ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"

# Install Zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git $ZSH_CUSTOM/plugins/fast-syntax-highlighting
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $ZSH_CUSTOM/plugins/zsh-autocomplete

# Configure Zsh Profile
wget https://raw.githubusercontent.com/BadEnd777/dotfiles/main/linux/.zshrc -O ~/.zshrc

# Configure Oh-My-Zsh Theme
mkdir -p ~/.config/zsh/themes
wget https://raw.githubusercontent.com/moarram/headline/main/headline.zsh-theme -O ~/.config/zsh/themes/headline.zsh-theme

# Restart Zsh
exec zsh

echo "Congratulations! You have successfully installed the Linux configuration setup."
