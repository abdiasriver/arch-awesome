#!/bin/bash
set -e
echo "################################################################"
echo "####             Instalacion ARCHLINUX axeso.red            ####"
echo "####      ESPAÑOL,3 PARTICIONES; EFI,SWAP,ROOT              ####"
echo "################################################################"
#mount -o remount,size=1G /run/archiso/cowspace
#efivar -l
#sudo dd bs=4M if=archlinux.iso of=/dev/sdX status=progress && sync
#loadkey es
#lsblk
#gdisk /dev/sda
#introduce  x --> z -->  y --->y
#cgdisk /dev/sda
# sda1 boot EF00
# sda2 swap 8200
# sda3 root
echo "####        1   formateando fat 32 para /dev/sda1         ####"
mkfs.fat -F32 /dev/sda1
echo "####        1.1           mkswap para sda2               ####"
mkswap /dev/sda2
echo "####        1.2               swapon en sda2             ####"
swapon /dev/sda2
echo "####        1.3     Formateando en btrfs sda3                 ####"
mkfs.btrfs /dev/sda3 -f
echo "####        1.4     Montando sda3                        ####"
mount /dev/sda3 /mnt
echo "####        1.5    crea directorio boot                  ####"
mkdir /mnt/boot
echo "####        1.6    Montando el boot en /mnt/boot         ####"
mount /dev/sda1 /mnt/boot

#cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.backup
#sed -i 's/^#Server/Server/' /etc/pacman.d/mirrorlist.backup
#rankmirrors -n 6 /etc/pacman.d/mirrorlist.backup > /etc/pacman.d/mirrorlist
echo "####        REFLECTOR          ####"
sh reflector.sh
echo "####        1.7     Instala base y base-devel           ####"
pacstrap -i /mnt base base-devel
echo "####        1.8     Crear el genfstab                   ####"
genfstab -U -p /mnt >> /mnt/etc/fstab
echo "####        1.9     Entrando en modo ChRoot           ####"
arch-chroot /mnt
echo "####            SIGUE LOS PASOS DEL 2                   ####"
