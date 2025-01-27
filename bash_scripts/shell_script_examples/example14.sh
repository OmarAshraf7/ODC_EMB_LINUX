#!/bin/bash
# Performs a Bitwise Operation Based on User Input
read -p "Enter two numbers: " num1 num2
read -p "Enter operation to perform (AND, OR, NOT): " operation
case $operation in 
    AND) echo "Result: $((num1&num2))" ;;
    OR) echo "Result: $((num1|num2))";;
    NOT) echo "Result: $((num1^num2))" ;;
    *) echo "Invalid Operator" ;;
esac