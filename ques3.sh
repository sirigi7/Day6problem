#!/bin/bash

read -p "Enter a number: " num


if [ $num -lt 2 ]
then
    echo "Not a prime number."
    exit 1
fi

is_prime=1

for ((i=2; i<=num/i; i++))
do
    if [ $((num%i)) -eq 0 ]
    then
        is_prime=0
        break
    fi
done

if [ $is_prime -eq 1 ]
then
    echo "Prime number."
else
    echo "Not a prime number."
fi
