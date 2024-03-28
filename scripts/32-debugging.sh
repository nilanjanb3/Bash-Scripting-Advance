#!/usr/bin/env bash

# set -x will set a debugging point
set -x

FILE="./scripts/names.txt"
cat $FILE | awk 'NR != 1 {print}' | while IFS="," read fname lname
do
    echo "fname: $fname, lname: $lname"
done