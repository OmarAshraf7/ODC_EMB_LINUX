#!bin/bash
#Calculate the Sum of Digits of a Given Number
read -p "Enter a number: " num
sum=0
while [ $num -gt 0 ]
do
    rem=$((num%10))
    sum=$((sum+rem))
    num=$((num/10))
done
echo "sum of number digits = $sum"
