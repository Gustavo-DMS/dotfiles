#!/bin/bash

if  $(echo "$script" | grep -q "stowing.sh") ; then
    pastas=$(gum choose --no-limit --cursor-prefix "( ) " --selected-prefix "(x) " --unselected-prefix "( ) " `ls`)
    if [ "$DEV" != "1" ]; then
        for pasta in $pastas; do
            if [ $pasta != "sddm" ]; then
                echo "stow: $pasta"
                stow -D $pasta
                stow $pasta
            fi
        done
    fi
    echo "stowing finalizado"
    echo
fi
