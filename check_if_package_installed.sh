#!/bin/bash
# Color variables
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
NORMAL=$(tput sgr0)

WINE_DEPS=('atom' 'pcmanfm')
MISSING_DEPS="";


for((i=0;i<${#WINE_DEPS[@]};i++))
do
    sudo pacman -Qi --color always "${WINE_DEPS[$i]}" &> /dev/null;
    if [ $? -eq 0 ] ; then
        echo -e "${GREEN}[ok] ${WINE_DEPS[$i]^} Found${NORMAL}";
    else
        echo -e "${RED}[no] ${WINE_DEPS[$i]^} Not Found${NORMAL}";
        MISSING_DEPS+=" ${WINE_DEPS[$i]}"
    fi;
done;

if [[ -n $MISSING_DEPS ]]; then
    echo -e "Installing missing packages..."
    sudo pacman -S --noconfirm $MISSING_DEPS
fi;