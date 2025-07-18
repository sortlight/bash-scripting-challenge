#!/bin/bash

# bless_user.sh - A wholesome script to bless a user with love, light, and purpose ✨

# Welcome the user
echo "--------------------------------------------------"
echo "🌟 Welcome to your Divine Console 🌟"
echo "--------------------------------------------------"
echo

# Ask for the user's name
read -p "What is your name, beloved child of light? " username
echo
echo "🕊️ Hello $username, preparing your blessings..."

# Sleep a bit for effect
sleep 2

# Function to deliver a random blessing
bless_user() {
    blessings=(
        "You are seen, $username. You are deeply loved."
        "May your hands build only what brings peace and purpose."
        "You carry light, $username. Shine boldly today."
        "Every closed door is redirection, not rejection."
        "You’re not late. Divine timing is never rushed."
        "Your work matters. Heaven watches in silence and smiles."
        "Breathe. You’re covered, chosen, and carried."
    )

    # Get random blessing
    random_index=$(( RANDOM % ${#blessings[@]} ))
    echo
    echo "✨ Blessing: ${blessings[$random_index]}"
    echo
}

# Bless the user
bless_user

echo "--------------------------------------------------"
echo "🧘 Feel free to run this anytime you need a little lift!"
echo "--------------------------------------------------"
