#!/usr/bin/env bash

IFS=" " read -ra words <<< "the quick brown fox jumps over the lazy dog"

for (( i=0; i<${#words[@]}; i++ ))
do
    echo "$i: ${words[i]}"
done