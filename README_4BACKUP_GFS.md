# README_4BACKUP_GFS.md

# 🗂 Backup System - GFS (Grandfather-Father-Son) Strategy

This repository contains a **bash script and cron configuration** to automatically back up a specific folder using the **tar.gz** format.  
It supports **daily, weekly, and monthly backups** following the GFS backup strategy.

---

## 📌 Features

- **Backup type:** Daily, Weekly, Monthly (GFS strategy)
- **Compression:** tar.gz
- **Automatic deletion** of old backups
- **Timestamped backups** for easy identification
- **Easy to configure** folder paths and retention periods
- **Works on Linux systems** with bash

---

## 🛠 Requirements

- Linux / macOS system
- Bash shell
- Cron daemon
- Sufficient disk space for backups

---

## ⚙️ Setup

### 1. Place the backup script

```bash
# Copy backup script
/usr/local/bin/backup.sh
# Or any path you prefer
