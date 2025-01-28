#!/bin/bash
#Write a function in a shell script that calculates the factorial of a given number.
read -p "Enter number value: " num
fact=1
for (( i=1 ; $((i < num+1)) ; ++i ))
do 
fact=$((fact*i))
done 
echo "factorial of $num = $fact"