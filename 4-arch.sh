#!/bin/bash
set -e
echo "####          5---bootctl install          ####"
bootctl install

echo "##########################################################################"
echo "####    5.1 ---Editando nano /boot/loader/entries/arch.conf           ####"
echo "##########################################################################"
echo -e "title Arch Linux\r\nlinux /vmlinuz-linux" >> /boot/loader/entries/arch.conf
echo -e "initrd /initramfs-linux.img" >> /boot/loader/entries/arch.conf

echo "####           5.2---  agregando el PARTUUID a entries          ####"
echo "options root=PARTUUID=$(blkid -s PARTUUID -o value /dev/sda3) rw" >> /boot/loader/entries/arch.conf

echo "####            5.3---instalacion de intel-ucode          ####"
pacman -S intel-ucode --noconfirm --needed

echo "####            5.4--- intel ucode a entries          ####"
echo -e "initrd /intel-ucode.img\r\ninitrd /initramfs-linux.img" >> /boot/loader/entries/arch.conf

echo "####             5.5---NetworkManager y linux-headers          ####"
sudo pacman -S linux-headers --noconfirm --needed


echo "############################################################################"
echo "####                   Para salir ejecuta lo siguiente                  ####"
echo "####    cd   ---->>>   exit ---->> umount -R /mnt  --->> reboot         ####"
echo "############################################################################"

##### openbox
#git clone https://github.com/arcolinuxd/arco-openbox.git
