#!/usr/bin/env bash

function welcomeNote () {
    echo "----------------------"
    echo "Welcome $1"
    echo "----------------------"
}

function sum() {
    res=$(($1+$2))
    echo $res
}

welcomeNote "Nilanjan"
welcomeNote "Rittick"

sum 10 20


