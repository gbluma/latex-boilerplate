#!/bin/bash

set -e

# show the user if there are any changes that need to be made
diction -sd $*

# count lines to detect if there are corrections
output=$(diction -sd $* | wc -l)

# if fixes need to be made, stop the process (exit w/ error)
if [[ $output -gt 1 ]]; then
  exit 1
else 
  exit 0
fi

