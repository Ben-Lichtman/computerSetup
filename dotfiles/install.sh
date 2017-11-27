#!/bin/bash

#save directory
origin=$(pwd)

if ! [ -e /var/git ]
then
	sudo mkdir /var/git
fi

if [ -e /var/git/oh-my-zsh ]
then
	#update the repository
	cd /var/git/oh-my-zsh
	sudo git pull
	cd $origin
else
	#clone into /var/git for use by all users
	sudo git clone https://github.com/robbyrussell/oh-my-zsh.git /var/git/oh-my-zsh
fi

#installing the dotfiles
ln -sf $origin/zshrc ~/.zshrc
ln -sf $origin/zprofile ~/.zprofile
ln -sf $origin/config ~/.config
