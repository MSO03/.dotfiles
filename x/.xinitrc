#!/bin/bash
xwallpaper --stretch ~/Downloads/backgroundImage.png #only works when before exec dwm
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
xcompmgr -c &
exec dwm
