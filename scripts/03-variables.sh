#!/bin/bash

echo "Using Variables"

fname="Nilanjan"
lname="Bhattacharjee"

name="$fname $lname"

echo $name


lname="B"

name="$fname $lname"

echo $name

# Taking output inside a variable
HOSTNAME=$(hostname)

echo "Name of the machine is $HOSTNAME"