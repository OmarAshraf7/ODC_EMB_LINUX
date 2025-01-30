#!/bin/bash 
#Slicing an Array using Bash Script
arr=(0 1 2 3 4)
echo "Given the array: ${arr[*]}"
read -p "Enter the first index to slice: " ind1
read -p "Enter the second index to slice: " ind2
arr=( "${arr[@]:$ind1:$ind2}" ) 
echo "The new array: ${arr[*]}"
