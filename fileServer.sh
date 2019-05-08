#!/bin/bash

twistd ftp [file server IP] -p 21

sleep 10

mysqldump -u root -p -h [MySQL IP] -t employees > data.sql
