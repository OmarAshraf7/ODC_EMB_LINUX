#!/bin/bash
#Check if a Directory Exists or Not

read -p "Enter a directory name: " dirname
if [ -d $dirname ] 
then 
    echo "Directory exists"
else
    echo "Directory does not exist"
fi