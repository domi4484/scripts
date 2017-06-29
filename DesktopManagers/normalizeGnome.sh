#!/bin/bash

echo "------------------------------"
echo "Setup Nemo instead of nautilus"
echo "------------------------------"

#TODO apt repo for nemo w8d...
sudo apt-get install nemo

xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search
gsettings set org.gnome.desktop.background show-desktop-icons false
gsettings set org.nemo.desktop show-desktop-icons true
xdg-mime query default inode/directory


echo "--------------------------------"
echo "Move and resize windows with Alt"
echo "--------------------------------"

gsettings set org.gnome.desktop.wm.preferences resize-with-right-button true
gsettings set org.gnome.desktop.wm.preferences mouse-button-modifier '<Alt>'

echo "-------------------------------"
echo "Show icons on buttons and menus"
echo "-------------------------------"
gsettings set org.gnome.settings-daemon.plugins.xsettings overrides "{'Gtk/ButtonImages': <1>, 'Gtk/MenuImages': <1>}"


gsettings set org.gnome.shell.overrides workspaces-only-on-primary false

gsettings set org.gnome.shell.overrides attach-modal-dialogs false




# export GTK_IM_MODULE="gtk-im-context-simple"
# export QT_IM_MODULE="simple"
#
# in /etc/profile.d

