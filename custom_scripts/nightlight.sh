#!/bin/bash
#nightlight.sh
#This script enables and disables the gnome night light


choice=$1
echo
if [[ $choice == true ]]; then
    gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled true
    echo \|\~ enabling night light
elif [[ $choice == false ]]; then
    gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled false
    echo \|\~ disabling night light
else
    echo "Invalid input!"
fi
echo
