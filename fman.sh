#!/bin/bash

# check if command is good
command_type=$(type -t "$1")
if [[ -z "$command_type" ]]; then
   echo "Input is not a valid command"
  exit
fi

# Create filename
file_name=$1-man.txt

# Warning for overwriting
if [[ -e "$file_name" ]]; then
	echo "A file already exists for this command. This file will be overwritten"
fi

# Run the 'man' command
man "$1" > "$file_name"

# print success message
echo "Manual for $1 saved to $file_name"
