#!/usr/bin/env bash

# Run this script with nohup 34-nohup.sh &
for i in {1..10..1}
do
    echo $i
    # sleep 3s
done

for (( i=0; i<10; i++ ))
do
    echo $i
    # sleep 3s
done