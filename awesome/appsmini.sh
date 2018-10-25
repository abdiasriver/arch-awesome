#!/bin/bash
set -e
echo "################################################################"
echo "####             Instalacion apps basic            ####"
echo "####                                                    ####"
echo "################################################################"
###enable multilib
trizen -S xdg-user-dirs mesa mesa-libgl dmenu libvdpau-va-gl lib32-mesa --noconfirm --needed --noedit
trizen -S scrot rsync termite thunar bash-completion zip unzip unrar p7zip lzop alsa-utils alsa-plugins pulseaudio pulseaudio-alsa ntfs-3g dosfstools exfat-utils f2fs-tools fuse fuse-exfat autofs mtpfs btrfs-progs neofetch --noconfirm --needed --noedit
sudo pacman -S --asdeps --needed cairo fontconfig freetype2
