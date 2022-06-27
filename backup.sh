#!/bin/bash
src=/home/shell
dest=/home/shell/backup
time_stamp=$(date +"%y-%m-%d-%H-%M-%S")
file=$dest/$time_stamp.tar.gz
tar -czf $file $src
echo "$time_stamp creating backups"

