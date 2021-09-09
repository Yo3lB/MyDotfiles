#!/bin/bash

USER_CONFIG_DIR="$HOME/.config/"

# install config files in user config dir & fonts
cp -r .fonts polybar sxhkd bspwm picom "$USER_CONFIG_DIR"
# reload sxhkd
pkill -USR1 -x sxhkd
# reload bspwm
bspc wm -r 
