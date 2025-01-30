#!/bin/bash 
#Calculate the Average of an Array of Numbers
arr=(3 1 5 2 7 4 6)
echo "Given the array: ${arr[*]}"
sum=0
for i in "${arr[@]}"
do 
    sum=$((sum+i))
done
avg=$(($sum/${#arr[@]}))
echo "The average of the array = $avg"
