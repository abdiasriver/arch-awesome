#!/bin/bash
set -e
echo "################################################################"
echo "####             Instalacion Xorg+ axeso.red            ####"
echo "####                                                    ####"
echo "################################################################"
###enable multilib
trizen -S xdg-user-dirs mesa mesa-libgl libvdpau-va-gl lib32-mesa 
trizen -S scrot rsync termite thunar dmenu bash-completion zip unzip unrar p7zip lzop alsa-utils alsa-plugins pulseaudio pulseaudio-alsa ntfs-3g dosfstools exfat-utils f2fs-tools fuse fuse-exfat autofs mtpfs 

trizen -S xorg-server xorg-apps xorg-server-xwayland xorg-xinit xorg-xkill xorg-xinput xf86-input-libinput
trizen -S networkmanager dnsmasq network-manager-applet nm-connection-editor 
sudo systemctl enable NetworkManager.service 
sudo pacman -S --asdeps --needed cairo fontconfig freetype2
