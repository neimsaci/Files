# Script to display hexadecimal clock for my dwm
#!/bin/sh

while true; do
  xsetroot -name " $(printf "%02X:%02X" `date '+%H %M'`) "
  sleep 1
done
