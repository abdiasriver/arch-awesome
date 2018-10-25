#!/bin/bash
set -e
##################################################################################################################
# Author	:	Erik Dubois
# Website	:	https://www.erikdubois.be
# Website	:	https://www.arcolinux.info
# Website	:	https://www.arcolinux.com
# Website	:	https://www.arcolinuxd.com
# Website	:	https://www.arcolinuxforum.com
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################


sudo pacman -S arandr --noconfirm --needed
sudo pacman -S awesome-terminal-fonts --noconfirm --needed
sudo pacman -S compton  --noconfirm --needed
sudo pacman -S dmenu  --noconfirm --needed
sudo pacman -S lxappearance-gtk3 --noconfirm --needed
sudo pacman -S lxrandr --noconfirm --needed
sudo pacman -S nitrogen --noconfirm --needed
sudo pacman -S qt4 --noconfirm --needed
sudo pacman -S thunar --noconfirm --needed
sudo pacman -S xorg-xrandr --noconfirm --needed
sudo pacman -S xfce4-power-manager --noconfirm --needed

echo "################################################################"
echo "####    Software from Arch Linux Repository installed     ######"
echo "################################################################"
