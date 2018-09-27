#!/bin/bash
set -e
echo "########################################################"
echo "#######   APPS QUE TENGO, LA MAYORIA               #####"
echo "#######    PUEDE YA ESTAR INSTALADA POR EL SISTEMA #####" 
echo "########################################################"

trizen -S adobe-source-sans-pro-fonts alsa-utils arc-gtk-theme ms-office-online --noconfirm --needed --noedit

trizen -S bash-completion btrfs-progs --noconfirm --needed --noedit

trizen -S dmenu dmidecode --noconfirm --needed --noedit

trizen -S epdfview exfat-utils --noconfirm --needed --noedit

trizen -S f2fs-tools ffmpegthumbnailer ffmpegthumbs file-roller --noconfirm --needed --noedit

trizen -S git gnome-disk-utility gnome-keyring gst-libav gst-plugins-bad gst-plugins-ugly gthumb gtk-engine-murrine gtk2-perl gvfs gvfs-afc gvfs-goa gvfs-google gvfs-mtp --noconfirm --needed --noedit

trizen -S hardinfo hddtemp htop --noconfirm --needed --noedit

trizen -S imagemagick intel-tbb intel-ucode inxi ipw2100-fw ipw2200-fw --noconfirm --needed --noedit

trizen -S jre10-openjdk --noconfirm --needed --noedit

trizen -S lib32-mesa lib32-mesa-vdpau libdvdcss libva-intel-driver libva-vdpau-driver libvdpau-va-gl linux-headers lsb-release lxappearance lzop --noconfirm --needed --noedit

trizen -S mesa-vdpau mtpfs mutter --noconfirm --needed --noedit

trizen -S neofetch network-manager-applet networkmanager networkmanager-openconnect networkmanager-openvpn networkmanager-pptp networkmanager-vpnc noto-fonts ntfs-3g numlockx --noconfirm --needed --noedit

trizen -S p7zip pavucontrol perl-linux-desktopfiles pkgstats python-pywal --noconfirm --needed --noedit

trizen -S qt5-declarative --noconfirm --needed --noedit

trizen -S rxvt-unicode --noconfirm --needed --noedit

trizen -S sardi-icons sardi-orb-colora-mixing-icons-git sardi-orb-colora-variations-icons-git scrot sharutils simplescreenrecorder sublime-text-dev surfn-icons-git --noconfirm --needed --noedit

trizen -S tamsyn-font temps termite thunar thunar-archive-plugin thunar-volman transmission-gtk ttf-bitstream-vera ttf-dejavu ttf-droid ttf-font-awesome ttf-inconsolata ttf-liberation ttf-mac-fonts ttf-roboto ttf-ubuntu-font-family --noconfirm --needed --noedit

trizen -S unace unrar unzip urxvt-perls urxvt-resize-font-git --noconfirm --needed --noedit

trizen -S variety vicious vlc --noconfirm --needed --noedit

trizen -S wget --noconfirm --needed --noedit

trizen -S xcursor-breeze --noconfirm --needed --noedit



#trizen -S xorg-iceauth xorg-luit xorg-server xorg-server-xwayland xorg-sessreg xorg-smproxy xorg-x11perf xorg-xbacklight xorg-xcmsdb xorg-xcursorgen xorg-xdriinfo xorg-xev xorg-xgamma xorg-xhost xorg-xinit xorg-xinput xorg-xkbevd xorg-xkbutils xorg-xkill xorg-xlsatoms xorg-xlsclients xorg-xpr xorg-xrefresh xorg-xset xorg-xsetroot xorg-xvinfo xorg-xwd xorg-xwininfo xorg-xwud


trizen -S zip zramswap --noconfirm --needed --noedit




trizen -S xdg-user-dirs-gtk xf86-input-keyboard xf86-video-intel --noconfirm --needed --noedit
