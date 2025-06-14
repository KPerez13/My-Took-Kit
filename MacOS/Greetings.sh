#!/bin/bash

HOUR=$(date +%H)

if [ "$HOUR" -ge 5 ] && [ "$HOUR" -lt 12 ]; then
    GREETING="Good morning"
elif [ "$HOUR" -ge 12 ] && [ "$HOUR" -lt 18 ]; then
    GREETING="Good afternoon"
else
    GREETING="Good evening"
fi

FULL_GREETING="$GREETING, Kenny. How can I help you today, sir?"

# Use the 'say' command with the Daniel voice, it was the closet to a "Jarvis" like voice that MacOS had built in
say -v Daniel "$FULL_GREETING"
