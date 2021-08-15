setxkbmap gb
xrdb -merge ~/.Xresources
sh ~/.scripts/xsetloop.sh &
exec dwm
