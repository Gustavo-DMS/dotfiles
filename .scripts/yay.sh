#!/bin/bash

if  $(echo "$script" | grep -q "yay.sh") ; then
    if [ "$DEV" != "1" ]; then
        if ! command -v yay &> /dev/null; then
            echo "instalando yay"
            sudo pacman -Syu
            sudo pacman -S --needed --noconfirm git base-devel
            mkdir /tmp/yay
            cd /tmp/yay
            curl -OJ 'https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=yay'
            makepkg -si
            cd
            rm -rf /tmp/yay
            yay --version
        else
            echo "yay is already installed."
        fi
    fi
    echo "yay instalado"
    echo
fi
