#Ben's guide to a new arch installation

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
ln -sf /usr/share/zoneinfo/Region/City /etc/localtim
hwclock --systohc
```

Set locale
```
locale-gen
cat /etc/locale.gen
nano /etc/locale.conf
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
pacman -S sudo base-devel git tree tmux
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
* fail2ban
* gcc
* python
* ranger
* ripgrep
* transmission-cli
* w3m
* wget
* gpm
* neofetch

## Git repo folder

```
sudo mkdir /var/git
```
