#!/bin/bash

declare -A arr

arr["name"]="Nilanjan"
arr["age"]=24
arr["city"]="Kolkata"

echo "my details are, name: ${arr[name]}"

declare -A nilanjan
nilanjan=(["name"]="Nilanjan" ["job"]="DevOps Engineer" ["org"]="Nagarro")

echo "My details are ${nilanjan["name"]}, ${nilanjan["job"]}, ${nilanjan["org"]}"