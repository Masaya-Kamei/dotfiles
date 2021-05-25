#!/bin/zsh

ln -svf ~/dotfiles/install_list/update_list.plist ~/Library/LaunchAgents/
launchctl load ~/Library/LaunchAgents/update_list.plist
launchctl start update_list.plist
