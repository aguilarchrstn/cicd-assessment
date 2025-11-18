#!/bin/bash

# Folder you want to backup
SOURCE="/path/to/your/folder"

# Where to store the backup
DEST="/path/to/backup"

# Create destination if missing
mkdir -p "$DEST"

# Timestamp
DATE=$(date +"%Y-%m-%d_%H-%M-%S")

# Output filename
BACKUP_FILE="$DEST/backup_$DATE.tar.gz"

# Create tarball
tar -czf "$BACKUP_FILE" "$SOURCE"

echo "Backup created: $BACKUP_FILE"
