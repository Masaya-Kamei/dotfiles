#!/bin/zsh

dotfiles=(.zshrc .vimrc .gitconfig)
for file in "${dotfiles[@]}"; do
    ln -svf ~/dotfiles/$file ~/
done

commands=(allman fman aman vman tman)
for c in "${commands[@]}"; do
	ln -svf ~/dotfiles/commands/$c /usr/local/bin/
done
