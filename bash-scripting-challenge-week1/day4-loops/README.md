# Day 4 – Loops and Automation for File Cleanup

## The Script

Today’s script helps you automate a basic but essential task: cleaning up junk files. You pick a directory and an extension (e.g., `.tmp`, `.log`, `.bak`) and the script loops through them, deleting one by one with precision.

This isn’t just about saving disk space. It’s about building **repeatable** workflows.

## Key Concepts I Practiced

- **For loops**

  ```bash
  for file in "$target_dir"/*"$extension"; do
    rm "$file"
  done

  ```

User input with read: Making the tool interactive.

Directory validation: Using if [ ! -d "$dir" ] to prevent errors.

File counting with find and wc -l: For sanity checks before taking action.

## What are we doing here?


Imagine you’re the boss of a lazy assistant. You tell them:

“Hey, if you find any files that are older than 7 days… toss them in the trash. Otherwise, leave them alone.”

That’s literally what if-else does in a Bash script. It gives your computer the power to make decisions like a grown-up. No emotions, just logic.

Now let’s say you’ve got 50 files to check. Would you rather open each one manually, or tell your assistant:

“Do that same check — for every single file in this folder.”

Boom. That’s a loop. It repeats your command again and again, one file at a time, without getting tired or bored.

If-else = make a decision

Loops = do it again and again

And together? They’re your new cleanup crew.

By the end of today, you’ll be able to write a script that patrols your folders, checks each file’s age and auto-deletes the dusty old stuff.  Still with me yeh?


# Ideas for Reuse

Convert this into a journaling tool to clean old dreams.

Adapt for smart contract logs or node backups in Web3 dev.

Schedule with cron to automatically clear files weekly.

# Author

Written by [SortSec](https://github.com/sortlight)
