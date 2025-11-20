#!/bin/bash

# Set wallpaper (must run before dwm starts)
xwallpaper --stretch ~/dotfiles/x/wallpapers/background.png

# Load key remaps if .Xmodmap exists
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap

# Start simple compositor for transparency/shadows
xcompmgr -c &

# Launch dwm as the main window manager
exec dwm

