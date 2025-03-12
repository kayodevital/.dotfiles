#!/bin/bash

rc=$(pgrep -l redshift-gtk | wc -l)

if [ "$rc" == 0 ]; then
/bin/redshift-gtk &
fi
nitrogen --restore &
<<<<<<< HEAD
##mintupdate-launcher &
nm-applet &
##xfce4-timer-plugin &
=======
#/bin/redshift-gtk &
#mintupdate-launcher &
nm-applet &
#xfce4-timer-plugin &
>>>>>>> babc4b358bb7873567320a4c9a93007482bb028a
slstatus &
xfce4-power-manager &
vc=$(pgrep -l volumeicon | wc -l)

if [ "$vc" == 0 ]; then
volumeicon &
fi
xset r rate 300 50 &
sxhkd &
<<<<<<< HEAD
flameshot -t false &
##syncthing &
blueman-applet &
#sc=$(pgrep -l librewolf | wc -l)
#if [ "$sc" == 1]; then
#fi
=======
flameshot &
kc=$(pgrep -l kdeconnect-app | wc -l)
if [ "$kc" == 0 ]; then
kdeconnect-app &
syncthing &
fi
>>>>>>> babc4b358bb7873567320a4c9a93007482bb028a
