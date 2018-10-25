#!/bin/bash
set -e
echo "################################################################"
echo "####             Instalacion Xorg+ axeso.red            ####"
echo "####                                                    ####"
echo "################################################################"
###enable multilib

trizen -S xorg-server xorg-apps xorg-server-xwayland xorg-xinit xorg-xkill xorg-xinput xf86-input-libinput --noconfirm --needed --noedit
trizen -S networkmanager dnsmasq network-manager-applet nm-connection-editor --noconfirm --needed --noedit
sudo systemctl enable NetworkManager.service 
sudo pacman -S --asdeps --needed cairo fontconfig freetype2
