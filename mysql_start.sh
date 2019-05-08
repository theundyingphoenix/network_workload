#!/bin/bash

service mysql start

sleep 3

cp /test_db-master.zip test_db-master.zip

unzip test_db-master.zip

mysql -u root -p -t < test_db-master/employees.sql

touch file.txt

echo $(python -c 'print "A"*100') > file.txt

sleep 5

# FTP server interaction

ftp [IP of ftp server] 21

send file.txt
