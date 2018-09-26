#!/bin/bash
set -e
echo "################################################################"
echo "####             Instalacion AWESOME   axeso.red            ####"
echo "####                                                        ####"
echo "################################################################"


## AWESOME
sudo pacman -S awesome lxappearance leafpad epdfview nitrogen variety
mkdir -p ~/.config/awesome/
cp -r awconf/* ~/.config/awesome
cp .xinitrc ~/.xinitrc
cp .bashrc ~/.bashrc
cp .zshrc ~/.zshrc
cp .face ~/.face

sudo mkdir -p /usr/share/backgrounds/arcolinux/
sudo mkdir -p /usr/share/pixmaps/faces/
sudo cp -r imgs/icy-yosemite.jpg /usr/share/backgrounds/arcolinux/
sudo cp -r imgs/arcolinux-golden.png /usr/share/pixmaps/faces/

## LIGHTDM

sudo pacman -S lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings sardi-mono-colora-variations-icons-git noto-fonts
sudo systemctl enable lightdm.service -f
sudo mkdir -p /etc/lightdm/
sudo cp -r lightdm/* /etc/lightdm/

