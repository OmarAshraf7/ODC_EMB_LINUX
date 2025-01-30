#!/bin/bash
#Remove an Element from an Array
arr=(1 4 6 2 3 7)
echo "Given array: ${arr[*]}"
read -p "Enter an element to remove: " val
arr=("${arr[@]/$val}")
echo "new array: ${arr[*]}"