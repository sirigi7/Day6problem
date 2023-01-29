#!/bin/bash

# prompt user for input
read -p "Enter the value of n: " n

i=1
result=1

while [ $result -le 256 ]
do	
    if [ $result -gt 256 ]
    then
	echo "Max Reached !"	
    elif [ $i -le $n ]
    then
	result=$((2**i))
        echo "$result"
    fi
    i=$((i+1))
done
