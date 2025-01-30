#!/bin/bash 
#Inserting an Element Into an Array
arr=(1 5 7 6 11 9)
echo "Given array: ${arr[*]}"
read -p "Enter an element to insert: " val
read -p "Enter the index to insert the element: " index
arr=("${arr[@]:0:$index}" "$val" "${arr[@]:$index}")
echo "The new array: ${arr[@]}"
