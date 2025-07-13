# Day 3 – File Checks and Conditional Decisions

## What I Built

Today’s script was built around a simple but powerful question: *“Did I log a dream today?”* 
From there, it uses Bash logic to answer that question for the user and act on it.

The script starts by welcoming the user, asking for their name and checking the `dream_logs/` folder for any file matching today’s date pattern. If no file exists, it prompts the user to log a dream. If one does exist, it simply notifies them and exits.

It feels small, but this kind of conditional flow is exactly what powers most automations. It’s not about complexity my friend, it’s about flow. Go with the flow lads!

## Why This Matters

One of the biggest things I’m learning is how Bash shines in the space between human interaction and system-level control. This script isn’t doing magic. But it’s doing something real: checking logs, creating files, reacting to decisions.

That’s the kind of muscle I want to develop especially for IAM tasks where small actions (like checking logs, validating access, or cleaning up unused data) matter.

## Concepts Practiced

- **User input**: Prompting for a name and saving it to a variable.
- **File checking with `find`**: Using `find` to scan for a pattern like `dream_YYYY-MM-DD_*.txt`.
- **Conditional logic with `[ -n "$var" ]`**: Checks if a file path was returned by `find`.
- **Dynamic file creation**: Using `mkdir -p` and `date`-based naming to generate uniquely named logs.
- **Layered decisions**: Nested `if` statements depending on user response.

## Things I Experimented With

```bash
date +%Y-%m-%d                     # Today's date
mkdir -p dream_logs               # Create folder if it doesn't exist
find dream_logs -name "dream_$(date +%F)_*.txt"  # Look for today's log
[ -n "$file_check" ]              # Check if the result is not empty

```
## Takeaways

This day was less about writing new code and more about shaping behavior. I'm now letting the script think before acting. It’s easy to forget that “automation” is really just about decisions and timing. Bash gives me a direct line into that logic.

I’m also seeing how these small scripts could serve as utilities in a larger toolset. Imagine running a series of checks before an IAM audit or prompting users to submit metadata before deploying a tool. This is doable with logic just like this.

## Looking Ahead
Next, I want to dive deeper into loops, and maybe tie it back into account checks, daily journaling, or even Web3 security reports. Time to stop asking “if” and start looping through the “what now?”

# Author

Written by [Sortlight](github.com/sortlight)

