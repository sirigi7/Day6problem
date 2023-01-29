#!/bin/bash

echo "Think of a number between 1 and 100, and I'll try to guess it."

low=1
high=100

while true; do
  mid=$(( (low+high) / 2 ))
  read -p "Is your number less than $mid? (y/n) " answer
  case $answer in
    [Yy]* ) high=$((mid-1));;
    [Nn]* ) low=$((mid+1));;
    * ) echo "Please enter y or n.";;
  esac
  if [ $low -eq $high ]; then
    echo "Your number is $low. I found it!"
    break
  fi
done
