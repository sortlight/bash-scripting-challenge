#!/bin/bash

# Welcome the user
echo "Welcome to the Loop Cleanup Utility!"

# Prompt for a target directory
read -p "Enter the directory you want to clean (e.g., logs, temp): " target_dir

# Validate directory
if [ ! -d "$target_dir" ]; then
  echo "Directory '$target_dir' does not exist. Exiting."
  exit 1
fi

# Ask for file extension to target
read -p "What file extension should we delete? (e.g., .tmp, .log): " extension

# Count files first
file_count=$(find "$target_dir" -type f -name "*$extension" | wc -l)

if [ "$file_count" -eq 0 ]; then
  echo "No files with the '$extension' extension found in $target_dir."
  exit 0
fi

echo "Found $file_count file(s) ending in '$extension' in $target_dir."
read -p "Do you want to delete them? (yes/no): " confirm

# Loop through files and delete if confirmed
if [[ "$confirm" == "yes" ]]; then
  for file in "$target_dir"/*"$extension"; do
    echo "Deleting: $file"
    rm "$file"
  done
  echo "Cleanup complete."
else
  echo "Aborted. No files were deleted."
fi
