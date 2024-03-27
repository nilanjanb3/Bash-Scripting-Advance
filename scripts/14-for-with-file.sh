#!/usr/bin/env bash


# Getting values from a file

FILE="./scripts/names.txt"
# The IFS variable (Internal Field Separator) is a special variable in bash that determines how the shell splits words into fields. By modifying the value of IFS, we can define a custom delimiter for splitting strings.
# IFS=','
# By default for loop will read a word at a time
for name in $(cat $FILE)
do
    echo "${name[0]}"
done
