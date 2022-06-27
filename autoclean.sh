#!/bin/bash
cache=$(free -m | awk NR==2'{print$6}' )
time_stamp=$(date +"%y-%m-%d-%H-%M-%S")
if [ $cache -gt 100 ]
then
	echo 3 > /proc/sys/vm/drop_caches
	cache1=$(free -m | awk NR==2'{print$6}')
	dropped=`expr $cache - $cache1 `
	echo "$time_stamp: $dropped MB cache cleared"
else
	echo "$time_stamp: cache is beloe 100 MB"
fi
