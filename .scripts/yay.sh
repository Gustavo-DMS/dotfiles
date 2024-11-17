#!/bin/bash
echo ":: Quer instalar o yay?"
echo
yay=$(gum confirm && echo "y" || echo "n")
if [[ $yay =~ ^[Yy]$ ]]; then
    if [ "$DEV" != "1" ]; then
        sudo pacman -Syu
        sudo pacman -S --needed git base-devel
        mkdir /tmp/yay
        cd /tmp/yay
        curl -OJ 'https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=yay'
        makepkg -si
        cd
        rm -rf /tmp/yay
        yay --version
        echo "yay instalado"
    fi
fi;
