#!/bin/bash
#Check if a String is a Palindrome using function

Palindrome () {
    if [ "$(echo "$1" | rev)" == "$1" ]
    then 
        echo "The string is a Palindrome"
    else
        echo "The string is not a Palindrome"
    fi
}
read -p "Enter a string: " str
Palindrome "$str"
