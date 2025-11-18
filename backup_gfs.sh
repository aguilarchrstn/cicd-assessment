#!/bin/bash

# =========================
# CONFIGURATION
# =========================

# Folder to back up
SOURCE="/path/to/your/folder"

# Backup destination (base folder)
DEST="/path/to/store/backups"

# Retention periods
DAILY_RETENTION=7       # keep last 7 daily backups
WEEKLY_RETENTION=4      # keep last 4 weekly backups
MONTHLY_RETENTION=6     # keep last 6 monthly backups

# =========================
# FUNCTIONS
# =========================
backup() {
    local TYPE=$1             # daily, weekly, monthly
    local DEST_TYPE="$DEST/$TYPE"
    local DATE=$(date +"%Y-%m-%d_%H-%M-%S")
    local FILE="$DEST_TYPE/${TYPE}_backup_$DATE.tar.gz"

    # Make sure destination folder exists
    mkdir -p "$DEST_TYPE"

    # Create the tar.gz backup
    tar -czf "$FILE" "$SOURCE"

    echo "[$TYPE] Backup created: $FILE"

    # Clean old backups
    case $TYPE in
        daily)
            find "$DEST_TYPE" -type f -mtime +$DAILY_RETENTION -delete
            ;;
        weekly)
            find "$DEST_TYPE" -type f -mtime +$((WEEKLY_RETENTION * 7)) -delete
            ;;
        monthly)
            find "$DEST_TYPE" -type f -mtime +$((MONTHLY_RETENTION * 30)) -delete
            ;;
    esac
}

# =========================
# MAIN
# =========================
if [ $# -ne 1 ]; then
    echo "Usage: $0 [daily|weekly|monthly]"
    exit 1
fi

case $1 in
    daily|weekly|monthly)
        backup $1
        ;;
    *)
        echo "Invalid option: $1. Choose daily, weekly, or monthly."
        exit 1
        ;;
esac
