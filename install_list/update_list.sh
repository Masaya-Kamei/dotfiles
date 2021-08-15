#!/bin/zsh

# コマンドはパスを指定する
/usr/local/bin/code --list-extensions > ~/dotfiles/install_list/extensions_list
# launchcd で自動実行すると、mas が記録されない
/usr/local/bin/brew bundle dump --force --file ~/dotfiles/install_list/Brewfile
