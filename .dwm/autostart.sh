#!/bin/bash

nitrogen --restore &
xset r rate 300 50 &
/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1 &
#flameshot -t false &
#/usr/bin/redshift-gtk &
#blueman-applet &

autostart="flameshot redshift-gtk mpd picom dunst pipewire slstatus nm-applet volumeicon xfce4-power-manager sxhkd"

for program in $autostart; do
	pidof -sx "$program" || "$program" &
done >/dev/null 2>&1
