#!/bin/bash

#save directory
origin=$(pwd)

if [ -e /opt/oh-my-zsh ]
then
	#update the repository
	cd /opt/oh-my-zsh; sudo git pull
	cd $origin
else
	#clone into /opt for use by all users
	sudo git clone https://github.com/robbyrussell/oh-my-zsh.git /opt/oh-my-zsh
fi

ln -s zshrc ~/.zshrc
ln -s hushlogin ~/.hushlogin
ln -s config ~/.config