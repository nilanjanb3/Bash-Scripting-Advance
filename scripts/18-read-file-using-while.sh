#!/usr/bin/env bash

# FILE="./scripts/names.txt"
# while IFS="," read fname lname
# do 
#     echo "fname: $fname, lname: $lname"

# done < $FILE


FILE="./scripts/names.txt"
while read lines
do 
    # IFS="," read fname lname <<< "$lines"
    # echo "fname: $fname, lname: $lname"

    IFS="," read -ra words <<< $lines
    echo "lname: ${words[1]}"

done < $FILE

### Avoiding Header ###
FILE="./scripts/names.txt"
cat $FILE | awk 'NR != 1 {print}' | while IFS="," read fname lname
do
    echo "fname: $fname, lname: $lname"
done