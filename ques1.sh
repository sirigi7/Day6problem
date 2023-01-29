#!/bin/bash -x

read -p "Enter value of n: " n


echo "Powers of 2 less than or equal to $n"



for ((i=1; i<=n; i++))
do
    
    echo "$((2**i))"
done
