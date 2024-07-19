#!/usr/bin/env bash

FILE="names.txt"

# cat $FILE

# for lines in $(cat $FILE)
# do
#     # echo $lines
#     IFS="," read -ra words <<<$lines
#     echo "${words[0]} ${words[1]}"
# done

# while read lines
# do
#     IFS="," read fname lname <<<$lines
#     echo "${fname} ${lname}"

# done < $FILE

cat $FILE | awk "NR != 1 {print}" | while IFS="," read -ra lines
do

echo -e "First Name: ${lines[0]}\nSurname: ${lines[1]}"
done

# echo 'a \n b'