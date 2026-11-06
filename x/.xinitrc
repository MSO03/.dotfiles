#!/bin/bash

# Set wallpaper (must run before dwm starts)
xwallpaper --stretch ~/dotfiles/x/wallpapers/house.jpg

# Has to be before exec dwm, for dmenu to inherit 
export PATH=/usr/local/bin:$PATH 
export PATH="$HOME/.scripts/:$PATH"

unclutter --timeout 3 &

# Load key remaps if .Xmodmap exists
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap

# Start simple compositor for transparency/shadows
xcompmgr -c &

# Launch dwm as the main window manager
exec dwm
 

