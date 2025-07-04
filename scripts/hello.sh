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

  # Checking argument
  if [ -n "$1" ]; then
    local log_filename="$1"
  else
    local timestamp=$(date "+%Y%m%d_%H%M%S")
    local log_filename="log-$timestamp.txt"
  fi

  # Write the log content
  {
    greet
    get_datetime
    count_files
  } > "logs/$log_filename"

  # history
  local execution_timestamp=$(date "+%Y-%m-%d %H:%M:%S")
  echo "$execution_timestamp - $log_filename" >> "logs/history.txt"

  echo "Log written to: logs/$log_filename"
}

greet
current_datetime=$(get_datetime)
file_count=$(count_files)
echo "$current_datetime"
echo "$file_count"


write_log "$1"
