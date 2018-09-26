#!/bin/bash
set -e
echo "##################################################################################"
echo "####             Instalacion apps terceros complementa   axeso.red            ####"
echo "####                                                                          ####"
echo "##################################################################################"

# AGREGAMOS LA KEY SI NO FUNCIONA LA PRIMERA DESCOMENTA LA SEGUNDA
sudo pacman-key --keyserver hkp://pool.sks-keyservers.net:80 -r 74F5DE85A506BF64
#sudo pacman-key --keyserver hkps://hkps.pool.sks-keyservers.net:443 -r 74F5DE85A506BF64
sudo pacman-key --lsign-key 74F5DE85A506BF64



echo #################################################################################################################
echo # AGREGAMOS EL REPOSITORIO DE ARCOLINUX
echo ##################################################################################################################

echo '
#[arcolinux_repo_testing]
#SigLevel = Required DatabaseOptional
#Server = https://arcolinux.github.io/arcolinux_repo_testing/$arch
[arcolinux_repo]
SigLevel = Required DatabaseOptional
Server = https://arcolinux.github.io/arcolinux_repo/$arch
[arcolinux_repo_3party]
SigLevel = Required DatabaseOptional
Server = https://arcolinux.github.io/arcolinux_repo_3party/$arch' | sudo tee --append /etc/pacman.conf

echo "##################################################################"
echo "###                  REPO arcolinux AGREGADO                  ####"
echo "##################################################################"
