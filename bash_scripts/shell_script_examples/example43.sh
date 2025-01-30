#!/bin/bash
#Loop Through Array Elements
arr=("apple" "grape" "banana" "orange" "mango")
for i in "${arr[@]}";
do 
    echo "$i"
done
