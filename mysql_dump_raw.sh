#!/bin/bash

mysqldump -u root -p -h [MySQL IP] -t employees > data.sql
