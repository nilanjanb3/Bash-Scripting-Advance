#!/usr/bin/env 

FILEPATH="/home/nilanjan/play/Bash-Scripting-Advance/scripts/names.txt"
# realpath "names.txt"
# echo "$FILEPATH"
if [[ -f $FILEPATH ]]
then
    echo "File exists"
else
    echo "File does not exist"
fi

<<comment
Some other options are

[[ ! -f file_name ]]
[[ -d dir_name ]]
[[ ! -d dir_name ]]

comment
