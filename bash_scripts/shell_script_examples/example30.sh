#!/bin/bash
#Check if Two Strings are Equal
read -p "Enter a string : " str1
read -p "Enter another string : " str2
if [ "$str1" == "$str2" ]
then
    echo "Strings are equal"
else
    echo "Strings are not equal"
fi
