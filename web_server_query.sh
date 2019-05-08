#!/bin/bash

n=0

while true; do
    ./auto_dump.sh
    n=$(( n + 1 ))
    echo $n
    if [ $n > 10 ];then
	break
    fi
done
