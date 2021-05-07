#!/bin/zsh

dotfiles=(.zshrc .fzfrc .vimrc)

for file in "${dotfiles[@]}"; do
        ln -svf $file ~/
done
