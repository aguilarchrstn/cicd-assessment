#!/bin/bash
###NOTE before execute this script make us to install mailutils ######
#### to install mailutils ####
##sudo apt install mailutils###


# Set threshold
THRESHOLD=80

# Email settings
TO_EMAIL="sample@example.com"
SUBJECT="Disk Usage Alert"
BODY="Warning: Disk usage on the server has exceeded ${THRESHOLD}%."

# Get disk usage percentage for root /
USAGE=$(df / | grep / | awk '{print $5}' | sed 's/%//')

# Check if usage is greater than threshold
if [ "$USAGE" -gt "$THRESHOLD" ]; then
    echo "Disk usage is high: $USAGE% — sending alert email..."
    echo "$BODY Current usage: $USAGE%" | mail -s "$SUBJECT" "$TO_EMAIL"
else
    echo "Disk usage is normal: $USAGE%"
fi
