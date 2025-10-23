#!/bin/bash

# Create folder if it doesn't exist
mkdir -p reports


time=$(date +"%Y%m%d_%H%M")

# Save metrics to file
file="reports/metrics_$ts.txt"

echo "System Metrics - $time" > $file
echo "" >> $file

echo "CPU Usage:" >> $file
top -bn1 | grep "Cpu(s)" >> $file

echo "" >> $file
echo "Memory Usage:" >> $file
free -h >> $file

echo "" >> $file
echo "Disk Usage:" >> $file
df -h >> $file

echo "" >> $file
echo "Uptime:" >> $file
uptime -p >> $file

echo "" >> $file
echo "Load Average:" >> $file
uptime | awk -F'load average:' '{ print $2 }' >> $file
