#!/usr/bin/env bash

read -rp "Provide the number of the day (e.g. 1 stands for Sunday) " day

case $day in
    1)echo "Sunday";;
    2)echo "Monday"
      echo "Today is $(date)";;
    3)echo "Tuesday";;
    4)echo "Wednesday";;
    5)echo "Thursday";;
    6)echo "Friday";;
    7)echo "Saturday";;
    *)echo "Please enter a valid day"
esac