# README_4BACKUP_GFS.md
DevOps Backup Script - GFS Strategy - Chan Aguilar
Created: 2025


# 🗂 Backup System – GFS (Grandfather-Father-Son) Strategy

This repository contains a **Bash backup script** implementing the **GFS backup strategy**.  
It automatically backs up a specific folder into **daily, weekly, and monthly** tar.gz archives and manages retention to save disk space.  

---

## 📌 Features

- **Backup types:** Daily, Weekly, Monthly (GFS strategy)
- **Compression:** tar.gz (tarball)
- **Automatic cleanup** of old backups
- **Timestamped backups** for easy identification
- **Simple configuration** for source folder, destination folder, and retention periods
- **Works on Linux systems** with bash
- Easy to integrate with **cron jobs** for automation
- Ready for DevOps practice or small production setups

---

## 🛠 Requirements

- Linux or macOS system  
- Bash shell  
- Cron daemon (for automated scheduling)  
- Sufficient disk space for backups  
- Optional: `mail` command for notifications (if extended)

---

## 📁 Folder Structure

The backup system follows this folder layout:

/path/to/store/backups/
├── daily/ # last 7 days of backups (default)
├── weekly/ # last 4 weeks of backups (default)
└── monthly/ # last 6 months of backups (default)


- Daily backups are stored in `/daily`  
- Weekly backups are stored in `/weekly`  
- Monthly backups are stored in `/monthly`  

Retention rules are configurable in the script.

---

## ⚙️ Script Configuration

### 1. Place the script

```bash
# Example location
/usr/local/bin/backup_gfs.sh

### 2. Make it executable
chmod +x /usr/local/bin/backup_gfs.sh
3. Configure variables in the script

# Folder to back up
SOURCE="/path/to/your/folder"

# Backup destination
DEST="/path/to/store/backups"

# Retention periods (in days/weeks/months)
DAILY_RETENTION=7
WEEKLY_RETENTION=4
MONTHLY_RETENTION=6

NOTE: Make sure the DEST path exists or the script will create it automatically.
📝 Usage

Run manually:

# Daily backup
/usr/local/bin/backup_gfs.sh daily

# Weekly backup
/usr/local/bin/backup_gfs.sh weekly

# Monthly backup
/usr/local/bin/backup_gfs.sh monthly

⏰ Automation with Cron

Automate backups using cron:

Edit the crontab:

crontab -e


Add the following lines:

# Daily backup at 2 AM
0 2 * * * /usr/local/bin/backup_gfs.sh daily

# Weekly backup on Sunday at 3 AM
0 3 * * 0 /usr/local/bin/backup_gfs.sh weekly

# Monthly backup on the 1st at 4 AM
0 4 1 * * /usr/local/bin/backup_gfs.sh monthly


Cron will execute the script automatically at the scheduled times.

🔧 Cleanup and Retention

The script automatically deletes old backups based on retention settings:

Daily: Keep last 7 backups (default)

Weekly: Keep last 4 backups (default)

Monthly: Keep last 6 backups (default)

These values can be adjusted in the script configuration section.

📦 Backup Output

Backups are stored as tar.gz files with timestamps:

daily_backup_2025-11-18_02-00-00.tar.gz
weekly_backup_2025-11-16_03-00-00.tar.gz
monthly_backup_2025-11-01_04-00-00.tar.gz

⚡ Notes

Ensure the source folder exists and has read permissions.

Make sure there is enough disk space in the backup destination.

Script can be extended to backup multiple folders, databases, or upload to cloud storage (AWS S3, Google Drive, etc.).

Can be combined with logging and email notifications for monitoring.

🛠 Troubleshooting

Error: Permission denied
→ Ensure the script and destination folders have correct permissions:

chmod +x backup_gfs.sh
mkdir -p /path/to/store/backups


Backup not created by cron
→ Cron runs with limited environment. Use full paths for all commands:

/usr/bin/tar -czf ...


Old backups not deleted
→ Verify retention variables and find command syntax in the script.

