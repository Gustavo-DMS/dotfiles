#!/bin/bash

if  $(echo "$script" | grep -q "packages.sh") ; then
    if [ "$DEV" != "1" ]; then
        echo "instalando pacotes"
    fi
    echo "pacotes instalados"
    echo
fi
