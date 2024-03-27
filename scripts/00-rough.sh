#!/bin/bash

string1="hello"
string2="hello"


if test "$string1" = "$string2"; then
    echo "The strings are equal."
else
    echo "The strings are not equal."
fi