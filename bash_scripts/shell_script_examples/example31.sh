#!/bin/bash
#Convert All Uppercase Letters in a String to Lowercase
read -p "Enter a string : " str
echo "Converted String: " $str | tr '[:upper:]' '[:lower:]' 
