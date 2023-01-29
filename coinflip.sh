#!/bin/bash

heads_count=0
tails_count=0

while true; 
  do
  flip=$((RANDOM % 2))
  if [ $flip -eq 0 ]; then
    echo "Heads"
    heads_count=$((heads_count+1))
  else
    echo "Tails"
    tails_count=$((tails_count+1))
  fi
  
  if [ $heads_count -eq 11 ]; then
    echo "Heads wins!"
    break
  elif [ $tails_count -eq 11 ]; then
    echo "Tails wins!"
    break
  fi
done
