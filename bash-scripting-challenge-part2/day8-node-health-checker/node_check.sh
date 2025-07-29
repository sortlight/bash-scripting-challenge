#!/bin/bash

# Node Health Checker
# Script to ping a list of nodes and report their availability

echo "Node Health Check Initiated"
echo "---------------------------"


if [[ ! -f nodes.txt ]]; then
  echo "Error: 'nodes.txt' not found. Please create it with a list of IPs or hostnames."
  exit 1
fi


report_file="health_report.txt"
echo "Node Health Report - $(date)" > "$report_file"
echo "-----------------------------" >> "$report_file"


while read -r node; do
  if ping -c 1 -W 1 "$node" &> /dev/null; then
    echo "$node is UP"
    echo "$node is UP" >> "$report_file"
  else
    echo "$node is DOWN"
    echo "$node is DOWN" >> "$report_file"
  fi
done < nodes.txt

echo "-----------------------------"
echo "Health check complete. See '$report_file' for results."
