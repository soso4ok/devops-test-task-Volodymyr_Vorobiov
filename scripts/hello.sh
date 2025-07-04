#!/bin/bash

echo Hello from Bash!

current_datetime=$(date "+%Y-%m-%d %H:%M:%S")

file_count=$(find . -maxdepth 1 -type f | wc -l)

{
  echo "Hello from Bash!"
  echo "$current_datetime"
  echo "$file_count"
} > "../logs/log-$timestamp.txt"