# Ben's guide to a new arch installation

## Pre-Boot

Install boot packages and hardware tools
```
pacman -S grub-bios linux-headers linux-lts linux-lts-headers wpa_supplicant wireless_tools
```

## Essentials

Login and change the user and root passwords
```
passwd
```

Change username of user and home folder of user
```
usermod -l newUser oldUser
usermod -d /home/homeDir -m user
groupmod -n newGroup oldGroup
```

Create new home folder and delete the old one
```
mkdir /home/newHome
rm -r /home/oldHome
```

Update repositories and upgrade all packages
```
pacman -Syu
```

Set timezone
```
ln -sf /usr/share/zoneinfo/Region/City /etc/localtime
hwclock --systohc
```

Set locale - remove comment on the one you want
```
nano /etc/locale.gen
locale-gen
less /etc/locale.conf #to check
```

Set hostname
```
nano /etc/hostname
```

Add "127.0.1.1 myhostname.localdomain myhostname" to hosts
```
nano /etc/hosts
```

## Important packages

Install important packages
```
pacman -S sudo base-devel binutils cronie git ntp tree tmux
```

Configure sudo
```
visudo
```

Add user to wheel for sudo
```
usermod -aG wheel user
```

## Command line customisation

Install ZSH
```
pacman -S zsh zsh-completions
```

Set as default shell
```
which zsh
chsh -s shellPath user
```

## Other packages

* clang
* cronie
* fail2ban
* gcc
* ntp
* python
* ranger
* ripgrep
* transmission-cli
* w3m
* wget
* gpm

## Git repo folder

```
sudo mkdir /var/git
```
