#!/bin/bash

mkdir -p archive

# Get yesterday's date
day=$(date -d "yesterday" +"%Y%m%d")

# Create archive
tar -czf archive/metrics_$day.tar.gz reports/metrics_${day}_*.txt
