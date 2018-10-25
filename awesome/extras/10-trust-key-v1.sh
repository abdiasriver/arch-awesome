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



####OPCION 1, COMENTALA CON UN # ANTES SI NO FUNCIONA Y DESCOMENTA LA OPCION 2
sudo pacman-key --keyserver hkp://pool.sks-keyservers.net:80 -r 74F5DE85A506BF64


#####OPCION 2 COMENTADA, DESCOMENTA SI NO FUNCIONA LA 1 Y COMENTA LA 1 CON UN #

#sudo pacman-key --keyserver hkps://hkps.pool.sks-keyservers.net:443 -r 74F5DE85A506BF64




sudo pacman-key --lsign-key 74F5DE85A506BF64

echo "################################################################"
echo "###                   key trusted                           ####"
echo "################################################################"
