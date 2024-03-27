#!/usr/bin/env bash

# AND Operator

read -rp "What is your age? " age
read -rp "What is your country? " country

if [[ $age -ge 18 ]] && [[ $country == "India" ]]
then
    echo "You can vote"
else
    echo "You can't vote"
fi

# OR Operator