#!/bin/bash

echo "Quais scripts você deseja executar?"
script=$(gum choose --no-limit --cursor-prefix "( ) " --selected-prefix "(x) " --unselected-prefix "( ) " `ls ./.scripts`)
# echo $pastas

# instalar o yay
source ./.scripts/yay.sh

# fazer o symlink dos arquivos de configuração
source ./.scripts/stowing.sh

# instalar os pacotes
source ./.scripts/packages.sh
