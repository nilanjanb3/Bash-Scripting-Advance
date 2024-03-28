#!/bin/bash

numbers=(10 20 30 40 50)
echo ${numbers[2]}

list=(100 "nilanjan" "pencil" "iphone" 13.5 98.3 true)
echo ${list[2]}

for ((i=0; i<${#numbers[@]}; i++))
do
    echo ${numbers[i]}
done

echo "all the values in list are: ${list[*]}"

# ${list[*]:starting_index:number_of_elements}
echo "values from 2 to 4 in list are: ${list[*]:2:2}"

echo "values from 2 to 4 in list are: ${list[*]:2}"

# Updating an array

list+=(30 40)
echo "${list[@]}"