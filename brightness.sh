#!/bin/bash

basedir="/sys/class/backlight/intel_backlight/"

old_brightness=$(cat $basedir"brightness")
max_brightness=$(cat $basedir"max_brightness")

old_brightness_p=$(( 100 * $old_brightness / $max_brightness))
new_brightness_p=$(($old_brightness_p $1))

new_brightness=$(($max_brightness * $new_brightness_p / 100))
new_brightness=$(($new_brightness > $max_brightness ? $max_brightness : $new_brightness))
new_brightness=$(($new_brightness < 0 ? 0 : $new_brightness))

echo $new_brightness > $basedir"brightness"
