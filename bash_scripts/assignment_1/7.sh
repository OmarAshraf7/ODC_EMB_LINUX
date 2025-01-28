#!/bin/bash
#Create a script that checks for and removes duplicate lines in a text file

read -p "Enter the file name: " file_name
sort "$file_name" | uniq > temp_file 
mv temp_file "$file_name"
echo "Duplicate Lines removed from $file_name"