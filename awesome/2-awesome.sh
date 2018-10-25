#!/bin/bash
set -e
echo "################################################################"
echo "####             Instalacion AWESOME   axeso.red            ####"
echo "####                                                        ####"
echo "################################################################"


## AWESOME
sudo pacman -Sy
sudo pacman -S awesome variety lxappearance neofetch epdfview nitrogen termite colordiff git xdg-user-dirs-gtk --noconfirm --needed
mkdir -p ~/.config/awesome/
mkdir -p ~/.config/variety/
cp -r awconf/* ~/.config/awesome
cp -r variety/* ~/.config/variety
cp -r .xinitrc ~/.xinitrc
cp -r .bashrc ~/.bashrc
#cp -r .zshrc ~/.zshrc
cp -r .face ~/.face
#cp -r .oh-my-zsh ~/.oh-my-zsh

sudo mkdir -p /usr/share/backgrounds/arcolinux/
sudo mkdir -p /usr/share/pixmaps/faces/
sudo cp -r imgs/yosemite.jpg /usr/share/backgrounds/arcolinux/
sudo cp -r imgs/golden.png /usr/share/pixmaps/faces/

##Termite 
mkdir -p ~/.config/termite/
sudo cp -r config/termite/* ~/.config/termite
## DOTFILES
 #sudo cp -r dotfiles/.bashrc dotfiles/.dircolors dotfiles/.dircolors_256 dotfiles/.nanorc dotfiles/.yaourtrc ~/
 #sudo cp -r dotfiles/.bashrc dotfiles/.dircolors dotfiles/.dircolors_256 dotfiles/.nanorc dotfiles/.yaourtrc /home/${username}/
 # rm -fr dotfiles
 
## LIGHTDM

sudo pacman -S lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings --noconfirm --needed
sudo systemctl enable lightdm.service -f
sudo mkdir -p /etc/lightdm/
sudo cp -r lightdm/* /etc/lightdm/
sudo pacman -Syyu --noconfirm
#installing displaymanager or login manager
#sudo pacman -S --noconfirm --needed lightdm
#sudo pacman -S --noconfirm --needed arcolinux-lightdm-gtk-greeter arcolinux-lightdm-gtk-greeter-settings
#sudo pacman -S --noconfirm --needed arcolinux-wallpapers-git 
#installing desktop environment
#enabling displaymanager or login manager
sudo systemctl enable lightdm.service -f
sudo systemctl set-default graphical.target

# color folders
git clone https://github.com/thombashi/dotfiles.git
cd dotfiles/
bash install.sh
cd ..
timedatectl set-timezone "America/Monterrey"
sudo mkinitcpio -p linux
echo "################################################################"
echo "####             NO OLVIDES INSTALAR DRIVERS VIDEO          ####"
echo "####                                                        ####"
echo "################################################################"
