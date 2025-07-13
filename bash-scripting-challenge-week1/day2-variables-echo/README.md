# Day 2 – Variables, User Input, and Conditional Logic

## What I Built

Today’s script felt like the first step toward something real. It wasn’t just commands printing out system info anymore. Now, the script could ask questions, store answers, make decisions and guess what, It could even keep a journal. What??? 

Here’s what I added to my Bash skillset:
- Declaring and using **variables**
- Collecting **user input** with `read`
- Writing **conditional logic** using `if`, `else`, and string comparisons
- Appending to text files (`journal.txt`) to simulate basic logging
- Dynamically creating folders and saving files
- Using timestamps to prevent overwriting

## Why It Matters

Variables and conditions are the backbone of any real script. Without them, a Bash file is just a glorified notepad. Today’s script took on a prophetic twist by personalizing messages, saving dream logs and alerting the user with a bell (`\a`). Now it’s not just functional. it’s responsive.

Also, logging user activity with timestamps gave me an early taste of what audit trails might feel like. And saving short “dreams” to timestamped files? That’s low-key the beginning of a logging system. Lightweight, but intentional and I love it.

## New Concepts I Practiced

- **`read -p`**: Prompt and capture input inline.
- **String comparison with `==`** inside `[ ]`.
- **Using `mkdir -p`** to create folders only if they don’t exist.
- **Appending with `>>`** to create a basic log.
- **Using `date`** in variable form to timestamp files uniquely.

## Sample Commands I Tested

```bash
echo "Testing variable: $MY_NAME"
mkdir -p dream_logs
date +%Y-%m-%d_%H-%M-%S
echo "My dream" > dream_logs/dream_$(date +%F_%H-%M-%S).txt

```

## Reflections

It’s weird how quickly this starts to feel like programming. Bash is obviously limited compared to Python or JavaScript, but it’s also faster to write, less abstract, and really powerful when you just want the machine to listen and act.

I’m starting to see how I could use scripts like this in real workflows — especially in IAM tasks like logging, auditing, or tracking temporary user sessions.

## Up Next

Tomorrow I want to get deeper into conditional logic. Maybe nested conditions or working with numeric comparisons. I’ll also start playing with case statements soon. Day by day, it’s building and that’s the whole point. We are moving!


## Author 

Written by [Sortlight](x.com/sortsec)
