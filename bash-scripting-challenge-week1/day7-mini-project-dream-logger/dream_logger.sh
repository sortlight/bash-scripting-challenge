#!/bin/bash

# Welcoming the dreamer
echo "Hey there, welcome to DreamLogger!"
read -p "What's your name? " username
echo "Nice to meet you, $username."
read -p "Would you like to log a dream today? (yes/no): " log_choice

if [[ "$log_choice" == "yes" ]]; then
    mkdir -p ~/dream_logs
    today=$(date +"%Y-%m-%d")

    # Prompt for dream details
    echo "Let's log your dream from $today."
    echo "Take a deep breath and describe your dream below:"
    read -p "Dream Title: " dream_title
    echo "Now describe the dream in your own words:"
    read -e dream_description

    
    dream_file=~/dream_logs/"$today"_"$username".txt
    {
        echo "Dream Title: $dream_title"
        echo "Date: $today"
        echo "Logged by: $username"
        echo
        echo "Dream:"
        echo "$dream_description"
    } > "$dream_file"

    echo "Dream saved successfully to $dream_file"
else
    echo "No worries. Come back when you're ready to log a dream."
fi
