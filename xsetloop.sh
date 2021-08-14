# Script to display hexadecimal clock for my dwm
# I put it in ~/.scripts directory and add> sh ~/.scripts/xsetloop.sh & <to my .xinitrc 
#!/bin/sh

while true; do
  xsetroot -name " $(printf "%02X:%02X" `date '+%H %M'`) "
  sleep 1
done
