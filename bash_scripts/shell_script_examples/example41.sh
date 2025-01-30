#!/bin/bash
#Calculate the Factorial of a Number
read -p "Enter a number: " num
fact=1
for (( i=num; i>0 ; i-- ))
do
    fact=$((fact*i))
done
echo "factorial of $num = $fact"

