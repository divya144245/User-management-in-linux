#!/bin/bash
 
src_dir="/home/ubuntu/divya/User-management-in-linux/scripts.txt"
 
tgt_dir="/home/ubuntu/divya/User-management-in-linux/backup"
 
backup_filename="backup_$(date +%Y-%m-%d).tar.gz"
 
echo "backup started"
 
echo "backing up to $backup_filename"
 
tar -czvf "${tgt_dir}/${backup_filename}" "$src_dir"
 
echo "backup complete"
