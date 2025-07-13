#!/bin/bash

# Day 2 – Variables, User Input, and If Statements

echo "Welcome to Day 2 of the Bash Scripting Challenge, $USER!"

# Prompt for user's name
read -p "What's your name? " username

# Define a prophetic encouragement
prophetic_word="Your steps are ordered. (Psalm 37:23)"

# Personalized response using if condition
if [ "$username" == "Gabriel" ]; then
    echo "Hey Prophet $username!"
    echo "$prophetic_word"
else
    echo "Welcome, $username. Stay ready for revelation."
fi

# Log user session
echo "$username logged in on $(date)" >> journal.txt

# Give user a moment of pause with a sound alert
echo -e "\a"

# Ask user to log a dream
read -p "Would you like to save a short dream? (yes/no): " response

if [[ "$response" == "yes" ]]; then
    mkdir -p dream_logs
    read -p "Enter a short dream: " dream_text
    timestamp=$(date +%Y-%m-%d_%H-%M-%S)
    echo "$dream_text" > "dream_logs/dream_$timestamp.txt"
    echo "Dream saved to dream_logs/dream_$timestamp.txt"
else
    echo "No dream logged today."
fi
