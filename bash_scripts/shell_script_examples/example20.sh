#!/bin/bash
#Check if a Given Number is Positive or Negative

read -p "Enter a number: " num
if [ $num -gt 0 ]
then 
    echo "Positive number"
elif [ $num -lt 0 ]
then    
    echo "Negative number"
else 
    echo "Zero" 
fi