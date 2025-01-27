#!/bin/bash
#Perform an Arithmetic Operation Based on User Input
read -p "Enter a number: " num1
read -p "Enter a samller number: " num2
read -p "Enter an operand: " operand
case $operand in 
    '+') echo "$num1 + $num2 = $((num1+num2))";;
    '-') echo "$num1 - $num2 = $((num1-num2))";;
    '*') echo "$num1 * $num2 = $((num1*num2))";;
    '/') echo "$num1 / $num2 = $((num1/num2))";;
    *) echo "Invalid Operand" ;;
esac
