#!/bin/bash

# isPackageInstalled() {
#   pacman -Qi "$1" &> /dev/null
#   echo $?
# }
# if [ $(isPackageInstalled 'code') ]; then 
#     # do things here
#     echo 'Package libssl is installed'
# fi

pacman -Qi "$1" &> /dev/null
echo $?