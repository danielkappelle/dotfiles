#!/usr/bin/env bash

icon="$HOME/Pictures/lock.png"
tmpbg='/tmp/screen.png'

(( $# )) && { icon=$1; }

scrot "$tmpbg"
#convert "$tmpbg" -scale 10% -scale 1000% "$tmpbg"
convert -blur 10x10 "$tmpbg" "$tmpbg"
convert "$tmpbg" "$icon" -gravity center -composite -matte "$tmpbg"
#i3lock -u -i "$tmpbg"
i3lock -i "$tmpbg"