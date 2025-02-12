#!/bin/bash

# Get the current volume
volume=$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}')

# Get the current brightness
brightness=$(light -G | awk '{print int($1)}')

# Output volume and brightness in a format suitable for i3bar
echo "Vol: $volume | Brightness: $brightness%"
