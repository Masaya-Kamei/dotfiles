#!/bin/zsh

dotfiles=(.zshrc .vimrc .gitconfig)
for file in "${dotfiles[@]}"; do
	rm ~/$file
    ln -svf ~/dotfiles/$file ~/
done

commands=(allman fman aman vman tman cman)
for c in "${commands[@]}"; do
	ln -svf ~/dotfiles/commands/$c /usr/local/bin/
done

vscode_settings=(setting.json keybindings.json)
for v in "${vscode_settings[@]}"; do
	rm ~/Library/Application\ Support/Code/User/$v
	ln -svf ~/dotfiles/vscode/$v ~/Library/Application\ Support/Code/User/
done
ln -svf ~/dotfiles/vscode/style.less ~/.mume/

karabiner_settings=(ctrl_enter.json)
for k in "${karabiner_settings[@]}"; do
	ln -svf ~/dotfiles/karabiner/$k ~/.config/karabiner/assets/complex_modifications/
done
