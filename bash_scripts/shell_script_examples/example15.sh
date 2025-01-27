#!/bin/bash
# Check if a Number is an Even or Odd
read -p "Enter a number: " num
if [ $((num%2)) == 0 ] 
then 
    echo "The number is even"
else  
    echo "The number is odd"
fi