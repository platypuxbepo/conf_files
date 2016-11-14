#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

#if [ -d /etc/X11/xinit/xinitrc.d ]; then
#  for f in /etc/X11/xinit/xinitrc.d/*; do
#    [ -x "$f" ] && . "$f"
#  done
#  unset f
#fi

# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice
# exec cinnamon-session
exec i3 
feh --bg-scale /path/to/image
# & /home/laurent/programmes/.system_me/script_touchpad.sh
# exec ratpoison
# exec startdde
# exec lightdm

