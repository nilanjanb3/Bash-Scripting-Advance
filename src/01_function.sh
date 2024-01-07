#!/bin/bash

sum() {
    result=$(( $1 + $2 ))
    echo "Sum is : ${result}" 
}


sum 2 3