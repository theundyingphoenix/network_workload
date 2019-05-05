#!/bin/bash

n=0

while true; do
    wget http://[IP of web server]:80 -o index.html
    sleep 3
    n=$((n + 1))
    echo $n
    if [ $n = 4000 ]; then
        break
    fi
done
