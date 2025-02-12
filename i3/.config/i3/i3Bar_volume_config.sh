#!/bin/bash

# Start i3status and get the output
i3status | while IFS= read -r line; do
  # Append volume to the i3status output
  volume=$(pamixer --get-volume-human)
  echo "$line | Vol: $volume"
done
