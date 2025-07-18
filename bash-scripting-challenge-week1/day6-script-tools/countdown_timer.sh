#!/bin/bash

# Welcome message
echo "⚡ Welcome, time traveler."
echo
echo "This is your mission control. We're counting down to your next big launch!"

# Ask user for countdown duration
read -p " How many seconds should we countdown from? " duration

# Validate input
if ! [[ "$duration" =~ ^[0-9]+$ ]]; then
  echo "Error: You must enter a valid number of seconds."
  exit 1
fi

# Begin countdown
echo "Countdown initiated..."
while [ $duration -gt 0 ]; do
  echo "$duration"
  sleep 1
  duration=$((duration - 1))
done

# Boom!
echo " Time's up! Mission complete."
