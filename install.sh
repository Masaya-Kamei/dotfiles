#!/bin/zsh

cat ~/dotfiles/install_list/extensions_list | xargs code --install-extension

brew bundle --file ~/dotfiles/install_list/Brewfile
