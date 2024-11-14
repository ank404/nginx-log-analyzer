#!/bin/bash

# Check if the user provided a log file as an argument
if [ -z "$1" ]; then
    echo "Usage: $0 <log-file>"
    exit 1
fi

LOG_FILE=$1

echo "Top 5 IP addresses with the most requests:"
awk '{print $1}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -n 5
echo

echo "Top 5 most requested paths:"
awk '{print $7}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -n 5
echo

echo "Top 5 response status codes:"
awk '{print $9}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -n 5
echo

echo "Top 5 user agents:"
awk '{for(i=12; i<=NF; i++) printf $i " "; print ""}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -n 5
