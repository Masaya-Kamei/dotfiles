#!/bin/zsh

dotfiles=(.zshrc .fzfrc .vimrc .gitconfig)

for file in "${dotfiles[@]}"; do
    ln -svf ~/dotfiles/$file ~/
done
