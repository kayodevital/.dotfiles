#!/bin/bash

nitrogen --restore &
pkill redshift && redshift -P &
#mintupdate-launcher &
nm-applet &
xfce4-timer-plugin &
slstatus &
xfce4-power-manager &
xfce4-volumed &
xset r rate 300 50 &
sxhkd &
