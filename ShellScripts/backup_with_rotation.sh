#!bin/bash
src=$1
dest=/home/Jatin/Backups
timestamp=$(date '+%y-%m-%d')

cp -r $src $dest/backup_$timestamp/
echo "Backup completed $dest/backup_$timestamp"
