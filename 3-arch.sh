#!/bin/bash
set -e
echo "################################################################"
echo "####             Instalacion ARCHLINUX axeso.red            ####"
echo "####           PARTE   3 DEL INSTALADOR                     ####"
echo "################################################################"
echo "####          4---INSTALA bash-completion          ####"
pacman -S bash-completion --noconfirm --needed
echo "####          4.1---Montando	efivarfs          ####"
mount -t efivarfs efivarfs /sys/firmware/efi/efivars
