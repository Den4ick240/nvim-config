#! /bin/bash

read -p "Are you sure? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    sudo rm -r /squashfs-root
    sudo rm -r ~/.local/share/nvim
    sudo rm /usr/bin/nvim
else
    echo "Aborting."
fi
