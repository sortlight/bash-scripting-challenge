#!/bin/bash


# Day 2 - Variables, User Input, and If Statement

echo "Welcome to Day 2 of your Bash journey, $USER!"

# Ask for the user's name
read -p "What's your name? " username

# Store a prophecy word
prophetic_word="Your steps are ordered. (Psalm 37:23)"

# Use an if statement
if [ "$username" == "Gabriel" ]; then
  echo "Hey Prophet $username! 👑"
  echo "$prophetic_word"
else
  echo "Welcome, $username! Stay expectant. 🌱"
fi

echo "$username logged in on $(date)" >> journal.txt
