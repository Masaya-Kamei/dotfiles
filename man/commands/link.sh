#!/bin/zsh

c=(allman aman cman fman tman vman)

for file in "${c[@]}"; do
    ln -svf ~/Documents/memo/commands/$file /usr/local/bin/
done
