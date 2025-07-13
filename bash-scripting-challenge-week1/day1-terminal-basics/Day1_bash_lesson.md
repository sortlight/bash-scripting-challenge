# Day 1 – Terminal Basics: Echo, Variables, and First Script

## What I Did

Day 1 was all about getting comfortable in the terminal. I wrote a small script that printed out system information and personal environment variables. It's not flashy, but it’s foundational. Just like you don’t build a house without digging the soil first, I’m not trying to automate anything fancy before understanding how the terminal breathes or work... LFG!!!

The script covered things like:

- How to display text in the terminal using `echo`
- How to pull environment variables like `$USER` and `$HOME`
- Listing all files in a directory using `ls -la`
- Getting the current date and time with `date`
- Checking how long the system has been running (`uptime`)
- Seeing how much disk space my home directory takes (`du -sh`)

## It Matters Because

Sure, I could do all of this by clicking around on my system. But that’s not the point. The point is control. I’m not here to watch things happen. I want to make them happen, on my terms.

This script might seem small, but it reminded me of one thing: Bash scripting is about speaking directly to your machine without fluff. And that kind of skill comes in handy whether you’re spinning up a server, checking logs or triggering workflows.

## What I Learned

Here are the technical bits I picked up along the way:

- `$USER` and `$HOME` are environment variables that are always available. Handy for personalization and targeting user-specific paths.
- `$(...)` is used to run a command inside another—this is called command substitution. e.g, `echo $(date)` prints the current date.
- You need to give permission to run your scripts using `chmod +x scriptname.sh`. Without it, Bash just stares at you like wtf you doing fam.
- Running a script requires a `./` prefix if it's in the current directory (`./myscript.sh`), which honestly just makes sense once you’ve typed it a few times.

## Side Experiments

I also tested out these commands just to get more comfortable:

```bash
whoami          # Show current user
pwd             # Print working directory
ls -lh          # List files with readable file sizes
echo $SHELL     # Show default shell
free -h         # Check system memory in human-readable format

```
## Final Thoughts

This day wasn’t about doing something groundbreaking. It was about making sure I actually understand the tools I’m going to build with over the next 13 days. And if there's anything I know from building systems (or even just stories), it's that a boring beginning often sets the stage for something incredible. Enjoy the ride!!!

Let’s see what Day 2 brings.

## Author 

Written by [Sortlight](x.com/sortsec)
