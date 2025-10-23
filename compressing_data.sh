#!/bin/bash

mkdir -p /home/ec2-user/assignment3/archive
day=$(date -d "yesterday" +"%Y%m%d")

# Find matching files and archive them
find /home/ec2-user/assignment3/reports/ -name "metrics_${day}_*.txt" | \
tar -czf /home/ec2-user/assignment3/archive/metrics_${day}.tar.gz -T -
