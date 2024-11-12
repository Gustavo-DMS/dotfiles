#!/bin/bash

pastas=$(gum choose --no-limit --cursor-prefix "( ) " --selected-prefix "(x) " --unselected-prefix "( ) " `ls`)
for pasta in $pastas; do
    if [ $pasta != 'sddm' ]; then
        echo "stow: $pasta"
        stow -D $pasta
        stow $pasta
    fi
done
