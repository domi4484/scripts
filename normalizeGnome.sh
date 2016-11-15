#!/bin/bash

gsettings set org.gnome.settings-daemon.plugins.xsettings overrides "{'Gtk/ButtonImages': <1>, 'Gtk/MenuImages': <1>}"

gsettings set org.gnome.shell.overrides workspaces-only-on-primary false

gsettings set org.gnome.shell.overrides attach-modal-dialogs false




# export GTK_IM_MODULE="gtk-im-context-simple"
# export QT_IM_MODULE="simple"
#
# in /etc/profile.d

