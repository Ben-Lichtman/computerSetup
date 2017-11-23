#!/bin/bash

#assumes ZSH is already installed

#make zsh default shell
zshLoc=$(which zsh)
chsh -s $zshLoc

#download pure theme
git clone https://github.com/sindresorhus/pure.git

#install pure theme
themeLoc="/usr/local/share/zsh/site-functions"
wd=$(pwd)
sudo ln -sfF $wd/pure/pure.zsh $themeLoc/prompt_pure_setup
sudo ln -sfF $wd/pure/async.zsh $themeLoc/async

#write zshrc
printf "# .zshrc\nautoload -U promptinit; promptinit\nprompt pure" > ~/.zshrc

#write zprofile
printf "# Remove \"last login\" message\nprintf \"printf \\\\033c\"" > ~/.zprofile