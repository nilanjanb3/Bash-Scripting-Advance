#!/usr/bin/env bash


echo "Enter the path of the log file: "
FILE="$(pwd)/nginx.txt"

### Using for

while read -r lines
do
    # echo $lines
    IFS=" " read -ra words <<< $lines
    echo "${words[5]:1} ${words[8]} ${words[6]}"
done < "$FILE"