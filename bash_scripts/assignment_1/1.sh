#!/bin/bash
#Write a shell script that calculates the sum of integers from 1 to N using a loop.
read -p "Enter N value: " N
sum=0
for (( i=0 ; $((i < N+1)) ; ++i ))
do 
sum=$((sum+i))
done 
echo "Sum = $sum"