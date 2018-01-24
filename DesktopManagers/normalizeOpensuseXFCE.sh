#!/bin/bash

echo "-------------------------------"
echo "Show icons on buttons and menus"
echo "-------------------------------"
gconftool-2 –type bool –set /desktop/gnome/interface/menus_have_icons true

echo "------------------"
echo "Remove system bell"
echo "------------------"
echo "set bell-style none" >> ~/.inputrc

echo "-----------------------"
echo "Disable windows roll up"
echo "-----------------------"
/usr/bin/xfconf-query -c xfwm4 -p /general/mousewheel_rollup -s false
