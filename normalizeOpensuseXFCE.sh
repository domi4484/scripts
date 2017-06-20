#!/bin/bash

echo "-------------------------------"
echo "Show icons on buttons and menus"
echo "-------------------------------"
gconftool-2 –type bool –set /desktop/gnome/interface/menus_have_icons true