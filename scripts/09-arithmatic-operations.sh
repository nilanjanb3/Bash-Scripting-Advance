#!/usr/bin/env bash

x=10
y=2

# Option 1 using let
let ans=$x*$y
echo $ans

let sum=$x+$y
echo $sum

# Option 2 using "$(( expr))"

ans="$((x-y))"
echo $ans
