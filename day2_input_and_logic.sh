#!/bin/bash

# Day 2 - Variables, User Input, If Statements, and Dream Logging

clear
echo "🔮 Welcome to Day 2 of your Bash journey, $USER!"
sleep 1

# Ask for name
echo
read -p "✨ What's your name, dreamer? " username

# Prophetic verses
verses=(
  "Jeremiah 29:11 — 'For I know the plans I have for you...'"
  "Psalm 23:1 — 'The Lord is my shepherd, I shall not want.'"
  "Isaiah 60:1 — 'Arise, shine, for your light has come!'"
  "Psalm 37:23 — 'Your steps are ordered by the Lord.'"
)

# Pick a random one
random_verse=${verses[$RANDOM % ${#verses[@]}]}

# Greet prophetically
echo
if [[ "${username,,}" == "gabriel" ]]; then
  echo "👑 Hey Prophet Gabriel! You carry fire 🔥"
else
  echo "🌱 Welcome, $username! Stay expectant. Heaven is watching."
fi

# Show verse
echo "📖 Word for you today: $random_verse"
echo -e "\a"
sleep 1

# Log visit
echo "$username logged in on $(date)" >> journal.txt
echo "📓 Activity logged in journal.txt"

# DREAM SECTION
echo
read -p "💭 Did you have a dream you'd like to log? (yes/no): " log_dream

if [[ "${log_dream,,}" == "yes" ]]; then
    # Create folder if not exists
    mkdir -p dream_logs

    echo
    read -p "📝 Share your dream in one sentence: " dream

    timestamp=$(date +"%Y-%m-%d_%H-%M-%S")
    file="dream_logs/${username}_${timestamp}.txt"

    echo "Dream by $username on $(date):" > "$file"
    echo "$dream" >> "$file"

    echo -e "\a"
    echo "✅ Dream saved to $file"
else
    echo "🌙 Alright, keep listening. He speaks in visions too."
fi

echo
echo "💌 'In quietness and trust is your strength.' — Isaiah 30:15"
