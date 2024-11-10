#!/bin/bash
INTERVAL=5

while true; do
    echo "Current Date and Time: $(date)"
    echo "System Information:"
    echo "OS: $(uname -o)"
    echo "Distribution: $(lsb_release -d | awk '{print $2, $3}')"
    echo "CPU: $(lscpu | grep 'Model name' | awk -F ':' '{print $2}')"
    echo "Total RAM: $(free -h | grep Mem: | awk '{print $2}')"
    echo "Available RAM: $(free -h | grep Mem: | awk '{print $7}')"
    echo "Disk Usage: $(df -h / | tail -1 | awk '{print $5}')"
    echo "----------------------------------------"
    sleep $INTERVAL
done
