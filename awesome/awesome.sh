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


## LIGHTDM

sudo pacman -S lightdm lightdm-gtk-greeter 
sudo systemctl enable lightdm.service -f
