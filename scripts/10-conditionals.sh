#!/usr/bin/env bash

read -rp "Enter your marks " marks


# If else
if [[ marks -ge 30 ]]
then
    echo "Your are pass"
else
    echo "You are fail"
fi

# If elif else ...
if [[ marks -ge 80 ]]
then
    echo "Grade A"
elif [[ marks -ge 60 ]]
then
    echo "Grade B"
elif [[ marks -ge 40 ]]
then
    echo "Grade C"
elif [[ marks -ge 25 ]]
then
    echo "Grade D"
else
    echo "Grade F"
fi
