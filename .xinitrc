#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

xmodmap -e 'remove Lock = Caps_Lock'
xmodmap -e 'add Mod4 = Caps_Lock'

#exec xterm
exec ck-launch-session awesome
#exec openbox
# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice
