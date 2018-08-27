#!/bin/bash
set -e
echo "####         3---Agregando un hostname            ####"
echo river > /etc/hostname
echo "####         3.1---Activando fstrim para ssd          ####"
systemctl enable fstrim.timer


##descomentar en el nano /etc/pacman.conf multilib
#echo -e "[archlinuxfr]\r\nSigLevel = Never" >> /etc/pacman.conf
##Checa el /etc/pacman.conf que se agregado el siguiente archlinuxfr  y al final del server $arch
### echo -e "Server = http://repo.archlinux.fr/$arch" >> /etc/pacman.conf

echo "####         3.2---Actualizar repos                ####"
pacman -Sy
echo "####         3.3---cambiar el passwd root          ####"
passwd
echo "####         3.4---Agregando USUARIO              ####"
useradd -m -g users -G rfkill,wheel,network,lp,storage,power,video,audio,lp -s /bin/bash abdias
echo "####         3.5---Modificar el PASSWORD          ####"
passwd abdias

echo "########################################################"
echo "####         3.6---SuDoERS con visudo              ####"
echo "####  Descomenta %wheel y agrega Defaults rootpw    ####"
echo "########################################################"
###configuracion sudoers
EDITOR=nano visudo
###Descomentar
# sed -i "s/# ${WHEEL}/${WHEEL}/g" $MNT/etc/sudoers
#%wheel ALL=(ALL) ALL
### y Agregale alli mismo
#Defaults rootpw
### guarda y cierra
