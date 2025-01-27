#!/bin/bash
#Check if a File is Writable

read -p "Enter a file name: " filename
if [ -w $filename ] 
then 
    echo "File is writable"
else
    echo "File is not writable"
fi