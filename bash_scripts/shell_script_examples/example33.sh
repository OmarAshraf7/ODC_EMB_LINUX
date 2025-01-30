#!/bin/bash
#Reverse a String
read -p "Enter a string: " str
str=$(echo "$str" | rev)
echo "Reversed String: $str"
