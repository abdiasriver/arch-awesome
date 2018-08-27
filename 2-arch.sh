#!/bin/bash
set -e
echo "####         2---  lenguaje ESPAÑOL           ####"
sed -i "s/#es_ES.UTF-8/es_ES.UTF-8/" /etc/locale.gen
#sed -i -e 's/#es_ES.UTF-8 UTF-8/es_ES.UTF-8 UTF-8/' /etc/locale.gen && 
locale-gen

echo "####         2.1---  un echo LANG a locale            ####"
echo LANG=es_ES.UTF-8 > /etc/locale.conf
echo "####         2.2--- un export del lenguaje           ####"
export LANG=es_ES.UTF-8

echo "####         2.3--- modificar la zona a Mexico_City     ####"
ln -s /usr/share/zoneinfo/America/Monterrey > /etc/localtime
echo "####         2.4---Modificar el reloj            ####"
hwclock --systohc --utc
echo "####         2.5---Un mkinitcpio -p linux            ####"
mkinitcpio -p linux
