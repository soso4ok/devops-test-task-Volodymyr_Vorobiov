#!/bin/bash

greet() {
  echo "Hello from Bash!"
}

get_datetime() {
  date "+%Y-%m-%d %H:%M:%S"
}

count_files() {
  find . -type f | wc -l
}

write_log() {
  mkdir -p logs
  local timestamp=$(date "+%Y%m%d_%H%M%S")
  {
    greet
    get_datetime
    count_files
  } > "logs/log-$timestamp.txt"
}

greet
current_datetime=$(get_datetime)
file_count=$(count_files)
echo "$current_datetime"
echo "$file_count"
write_log