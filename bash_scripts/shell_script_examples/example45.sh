#!/bin/bash
#Sort an Array of Integers in Ascending Order
arr=(1 5 2 4 6 3 9 12 0 8)
echo "Given the array: ${arr[*]}"
arr=($(echo "${arr[*]}" | tr ' ' '\n' | sort -n | tr '\n' ' '))
echo "The sorted array: ${arr[*]}"
