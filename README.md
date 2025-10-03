# Bash Functions and Useful Scripts

A collection of reusable Bash functions and other personal tweaks.

## Bash Functions

Each Bash function is saved in a `*-function.sh` file.

Modify your Bash config/profile file to use them (replace contents of {} appropriately).

1. To use only those you like, add the following line for each:
```
. $HOME/{repo_directory}/{function_I_like}-function.sh`
```

2. To use the whole collection, add the following loop:
```
if [ -d "$HOME/{repo_directory}" ]; then
  for f in "$HOME/{repo_directory}/"*-function.sh; do
    [ -r "$f" ] && . "$f"
  done
fi
```
