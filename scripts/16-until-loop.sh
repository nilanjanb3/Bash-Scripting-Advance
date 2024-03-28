#!/usr/bin/env bash

count=10
num=0

until [[ $num -gt $count ]]
do 
    echo $num
    num=$((num+1))
done

