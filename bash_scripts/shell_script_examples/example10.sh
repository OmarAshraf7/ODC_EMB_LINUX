#!/bin/bash
#Calculating the Remainder of a Division
read -p "Enter the first number: " num1
read -p "Enter the second number: " num2
rem=$((num1%num2))
echo "The remainder = $rem"