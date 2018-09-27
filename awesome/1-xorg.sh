#!/bin/bash
set -e
echo "################################################################"
echo "####             Instalacion Xorg+ axeso.red            ####"
echo "####                                                    ####"
echo "################################################################"

sudo pacman -S xdg-user-dirs mesa mesa-libgl libvdpau-va-gl lib32-mesa 
sudo pacman -S bc scrot rsync termite thunar dmenu mlocate bash-completion pkgstats zip unzip unrar p7zip lzop cpio alsa-utils alsa-plugins pulseaudio pulseaudio-alsa ntfs-3g dosfstools exfat-utils f2fs-tools fuse fuse-exfat autofs mtpfs 
sudo pacman -S --asdeps --needed cairo fontconfig freetype2
sudo pacman -S xorg-server xorg-apps xorg-server-xwayland xorg-xinit xorg-xkill xorg-xinput xf86-input-libinput
sudo pacman -S xf86-video-intel 
sudo pacman -S networkmanager dnsmasq network-manager-applet nm-connection-editor 
sudo systemctl enable NetworkManager.service 

