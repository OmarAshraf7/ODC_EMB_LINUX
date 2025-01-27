#!/bin/bash
#Check if a Given Input is a Valid URL

read -p "Enter a URL: " url
if [[ $url == http://* || $url == https://* ]]
then 
    echo "Valid URL"
else 
    echo "Invalid URL"
fi