#!/bin/bash

#rc=$(pgrep -l redshift | wc -l)

#if [ "$c" == 0 ]; then
/bin/redshift-gtk &
#fi
nitrogen --restore &
#/bin/redshift-gtk &
#mintupdate-launcher &
nm-applet &
#xfce4-timer-plugin &
slstatus &
xfce4-power-manager &
#vc=$(pgrep -l volumeicon | wc -l)

#if [ "$c" == 0 ]; then
volumeicon &
#fi
fixfce4-volumed &
xset r rate 300 50 &
sxhkd &
