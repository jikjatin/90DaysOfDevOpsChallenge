#!/bin/bash

dest=/home/Jatin/Backups
src=$1

function log_create(){
  timestamp=$(date '+%y-%m-%d-%s')
  mkdir $dest/backup_$timestamp && cp -r $src $dest/backup_$timestamp/
  echo "Backup completed $dest/backup_$timestamp"
}

function log_rotate(){
  rm -rf ${backup_arr[$backup_no-1]} 
}


log_create
backup_no=$(ls -dt $dest/backup*/ | wc | awk '{print$2}') #'-dt' list all directory sort by newest first
backup_arr=($(ls -dt $dest/backup*/)) #created an array which store all backup folder names in order of latest to oldest
if [ "$backup_no" -gt "3" ]
then
  log_rotate
  backup_no=$(ls -dt $dest/backup*/ | wc | awk '{print$2}')
fi
