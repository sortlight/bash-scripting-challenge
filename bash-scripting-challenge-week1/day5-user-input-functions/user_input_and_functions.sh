#!/bin/bash

# A simple script to demonstrate user input and functions

# Welcome message
echo "--------------------------------------------------"
echo " Hello there! Welcome to the Interactive Shell!"
echo "--------------------------------------------------"

# Ask for the user's name
read -p "What's your name? " username
echo "Nice to meet you, $username."

# Function to check if a directory exists
check_directory() {
    local dir_name=$1

    if [ -d "$dir_name" ]; then
        echo "The directory '$dir_name' already exists."
    else
        echo "The directory '$dir_name' does not exist."
        read -p "Would you like to create it now? (y/n): " choice
        if [[ $choice == "y" || $choice == "Y" ]]; then
            mkdir "$dir_name"
            echo " Directory '$dir_name' created successfully!"
        else
            echo "Alright, we won’t create it."
        fi
    fi
}

# Ask the user for a directory to check
read -p "Enter the name of a directory to check/create: " dirname

# Call the function
check_directory "$dirname"

echo "--------------------------------------------------"
echo " Bye $username, and happy scripting!"
echo "--------------------------------------------------"
