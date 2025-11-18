#!/bin/bash

usage=$(df / | grep / | awk '{print $5}' | sed 's/%//')

if [ $usage -gt 80 ]; then
    echo "WARNING: Disk usage is above 80%: $usage%"
else
    echo "Disk usage is normal: $usage%"
fi
