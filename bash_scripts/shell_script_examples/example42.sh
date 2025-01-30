#!/bin/bash
#Calculate the Sum of the First “n” Numbers
read -p "Enter a number: " num
sum=0
for(( i=0; i<=$num ;i++ ))
do 
    sum=$((sum+i))
done
echo "The sum of first $num = $sum" 