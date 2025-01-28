#!/bin/bash
#Create a script that searches for a specific word in a file and counts its occurrences

read -p "Enter a word to search for: " word
read -p "Enter a file to search in: " file

count=$(grep -o "\b$word\b" "$file" | wc -l)
echo "($word) occurs ($count) times in ($file)"

