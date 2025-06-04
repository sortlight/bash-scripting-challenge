#!/bin/bash

# Ask for new username
read -p "Enter the new prophetic/Web3 username (e.g., baby_logger): " newuser

# Ask if user should have sudo access
read -p "Should this user have sudo access? (yes/no): " givesudo

# Create the user and home directory
sudo adduser --gecos "" "$newuser"

# Optionally add to sudo group
if [[ "$givesudo" == "yes" ]]; then
  sudo usermod -aG sudo "$newuser"
  echo "✅ Added $newuser to sudo group."
fi

# Create prophetic dream_logs folder in home directory
sudo mkdir /home/$newuser/dream_logs
sudo chown -R $newuser:$newuser /home/$newuser/dream_logs

# Set welcome message in .bashrc
echo -e "\n# Welcome message\nfiglet 'Welcome $newuser!' | lolcat\n" | sudo tee -a /home/$newuser/.bashrc > /dev/null

echo "✅ User '$newuser' created successfully!"
echo "📁 Folder /home/$newuser/dream_logs initialized."
