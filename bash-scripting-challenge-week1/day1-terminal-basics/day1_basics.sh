#!/bin/bash

# Day 1 – Terminal Basics: Echo, Variables, Environment

# Print welcome message
echo "Welcome to Day 1 of the Bash Scripting Challenge!"

# Show current user
echo "You are logged in as: $USER"

# Show home directory
echo "Your home directory is: $HOME"

# List current directory contents
echo "Listing files in current directory:"
ls -la

# Show current date and time
echo "Today's date is: $(date)"

# Print system uptime
echo "System uptime:"
uptime

# Show disk usage
echo "Disk usage in home directory:"
du -sh "$HOME"
