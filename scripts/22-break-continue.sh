#!/usr/bin/env bash

for (( i=0 ; i<10; i++ ))
do
    if [[ $i -eq 5 ]]
    then
        continue
    elif [[ $i -eq 8 ]]
    then
        break
    else
        echo "$i"
    fi
done

