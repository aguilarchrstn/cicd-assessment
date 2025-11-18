# README_4BACKUP_GFS.md

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

