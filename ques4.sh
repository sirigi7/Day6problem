#!/bin/bash

read -p "Enter the first number and last number of your range: " start end


for num in $(seq $start $end)
do
    is_prime=1

    if [ $num -lt 2 ]
    then
        continue
    fi

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
        echo $num
    fi
done
