#!/bin/bash

#update all packages
sudo pacman -Syu

#install packages
sudo pacman -S --needed fail2ban gcc git htop mosh nano openssh powerline powerline-fonts python ranger ripgrep sudo tmux transmission-cli w3m wget zsh