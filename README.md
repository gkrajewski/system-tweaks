# Useful System (macOS) Tweaks

A collection of reusable Bash functions and other personal tweaks,
mostly macOS targeted.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)  
*Note: Some snippets are adapted from community sources — see [License & Attribution](#license--attribution) section.*

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

### License & Attribution

This repository is licensed under the MIT License.

It is a personal collection of system tweaks and utilities, accumulated and refined over many years.
Some scripts are entirely my own work, while others are adaptations or improvements of snippets found in public sources.
Where possible, I’ve acknowledged original authors in code comments.

If you recognize material of yours here that lacks proper attribution,
please let me know — I’ll be happy to add credit or clarify licensing.
