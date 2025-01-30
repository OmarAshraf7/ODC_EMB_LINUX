#!/bin/bash
#Capitalize the First Letter of a Word
read -p "Enter a string: " str
cap_str=$(echo "${str:0:1}" | tr '[:lower:]' '[:upper:]')${str:1}
echo "first letter capitalized: $cap_str"
