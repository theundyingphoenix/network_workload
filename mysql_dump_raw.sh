#!/bin/bash

mysqldump -u root -p -h 10.0.2.10 -t employees > data.sql
