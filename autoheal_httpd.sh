#!/bin/bash
HTTPD=$(netstat -tunlp | grep httpd | wc -l)
time_stamp=$(date +"%y-%m-%d-%H-%M-%S")
if [ $HTTPD -eq 1 ]
then
	echo " $time_stamp HTTPD server running ok"
else
	systemctl restart httpd
	echo "$time_stamp HTTPD server restarted"
fi
