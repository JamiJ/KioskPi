#!/bin/bash
xset s noblank
xset s off
xset -dpms

unclutter -idle 0.5 -root &

sed -i 's/"exited_cleanly":false/"exited_cleanly":true/' /home/pi/.config/chromium/Default/Preferences
sed -i 's/"exit_type":"Crashed"/"exit_type":"Normal"/' /home/pi/.config/chromium/Default/Preferences

/usr/bin/chromium-browser --noerrdialogs --disable-infobars --kiosk INSERT-LINK-HERE-REPLACE-THIS


#This is for 2 different addresses to be shown in the same screen. It swaps in 30 seconds timer. 

#/usr/bin/chromium-browser --noerrdialogs --disable-infobars --kiosk LINK-1 & LINK-2
#while true; do
#   xdotool keydown ctrl+Tab; xdotool keyup ctrl+Tab;
#   sleep 30
#done