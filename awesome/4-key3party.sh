#!/bin/bash
set -e
echo "##################################################################################"
echo "####             Instalacion apps terceros complementa   axeso.red            ####"
echo "####                                                                          ####"
echo "##################################################################################"

sh extras/000-use-all-cores-makepkg-conf-v2.sh

#en el script 10-trust-key-v1.sh ubicado en extras selecciona la opcion si hay error
sh extras/10-trust-key-v1.sh
sh extras/20-add-arcolinux-repo-to-pacman-conf-v2.sh
#sudo pacman -Sy
#trizen -S arcolinux-faces-git arcolinux-fonts-git arcolinux-variety-git
#arcolinux-config-git arcolinux-nitrogen-git arcolinux-oblogout arcolinux-oblogout-themes-git