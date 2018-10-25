#!/bin/bash
set -e
echo "################################################################"
echo "####             AGREGAR USUARIO CAMBIA EL NOMBRE abdias por el tuyo           ####"
echo "####                                                    ####"
echo "################################################################"
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
