#!/bin/bash

# Conditional Logic and File Existence Check


echo "Welcome to Day 3 of your Bash scripting challenge."

read -p "Please enter your name: " username
echo "Hello, $username."

log_dir="dream_logs"

today=$(date +%Y-%m-%d)

file_check=$(find "$log_dir" -type f -name "dream_${today}_*.txt" 2>/dev/null)

# Conditional logic based on whether a dream file was found
if [ -n "$file_check" ]; then
    echo "You’ve already logged a dream today, $username."
    echo "File found: $file_check"
else
    echo "No dream found for today, $username."
    read -p "Would you like to log a dream now? (yes/no): " response

    if [[ "$response" == "yes" ]]; then
        read -p "Enter a short summary of your dream: " dream_text
        timestamp=$(date +%Y-%m-%d_%H-%M-%S)
        mkdir -p "$log_dir"
        echo "$dream_text" > "$log_dir/dream_$timestamp.txt"
        echo "Dream saved to $log_dir/dream_$timestamp.txt"
    else
        echo "Alright, no worries. Maybe later."
    fi
fi


