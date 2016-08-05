#!/bin/sh
pwd=$(cat /root/.mysql_secret | awk -F '): ' '{print $2}')
service mysql start
mysqladmin -uroot -p$pwd password root