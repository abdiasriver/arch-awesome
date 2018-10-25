#!/bin/bash
set -e
#======================================================================================
#                                axeso.red
#======================================================================================
echo "################################################################"
echo "####             Instando   reflector                       ####"
echo "################################################################"
sudo pacman -S --noconfirm --needed reflector


echo "################################################################"
echo "####         finding fastest servers - worldwide            ####"
echo "################################################################"

# finding the fastest archlinux servers

sudo reflector -l 100 -f 50 --sort rate --threads 5 --verbose --save /tmp/mirrorlist.new && rankmirrors -n 0 /tmp/mirrorlist.new > /tmp/mirrorlist && sudo cp /tmp/mirrorlist /etc/pacman.d


echo "################################################################"
echo "####                  fastest servers  saved                ####"
echo "################################################################"


cat /etc/pacman.d/mirrorlist

echo "################################################################"
echo "####              END REFLECTOR                             ####"
echo "################################################################"
