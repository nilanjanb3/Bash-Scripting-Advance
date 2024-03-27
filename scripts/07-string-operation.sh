#!/bin/bash

myName="Nilanjan Bhattacharjee"
len=${#myName}

echo "Length of myName is: $len"

# Uppercase
echo "${myName^^}"

# Lowercase
echo "${myName,,}"

# Replace
echo "${myName/Nilanjan/N}"

# Slice

echo "${myName:0:10}"


