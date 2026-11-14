#!/bin/bash

# Set wallpaper (must run before dwm starts)
wallpaper=$(cat $HOME/.config/wallust/current_wallpaper/wallpaper_path)
xwallpaper --stretch $wallpaper

# Has to be before exec dwm, for dmenu to inherit 
export PATH=/usr/local/bin:$PATH 
export PATH="$HOME/.scripts/:$PATH"

unclutter --timeout 3 &

# Load key remaps if .Xmodmap exists
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap

# Start simple compositor for transparency/shadows
xcompmgr -c &

xkbet mousekeys
xkbset exp =mousekeys
xkbset ma 60 10 3 10 0


# Launch dwm as the main window manager
exec dwm
 

