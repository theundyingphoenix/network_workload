#!/bin/bash

n=0

while true; do
    wget http://10.0.1.10:80 -o index.html
    sleep 3
    n=$((n + 1))
    echo $n
    if [ $n = 4000 ]; then
        break
    fi
done
