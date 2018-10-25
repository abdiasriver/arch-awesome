#!/bin/bash
set -e

timedatectl set-timezone "America/Monterrey"
sudo mkinitcpio -p linux
sudo cp -r awesome/extras/Personal/settings/default/index.theme /usr/share/icons/default/

sh awesome/extras/900-fix-microcode-error-v1.sh
sh awesome/extras/install-hardcode-fixer-git-v1.sh
sh awesome/extras/01-install-zsh-v3.sh
sudo chsh abdias -s /bin/zsh
echo "sudo chsh username -s /bin/zsh"
#change theme on .zshrc
