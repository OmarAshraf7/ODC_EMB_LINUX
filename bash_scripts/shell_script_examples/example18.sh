#!/bin/bash
#Check if a Given Input is a Valid Email ID

read -p "Enter an email ID: " email
if [ $email == *@*.* ]
then 
    echo "Valid email"
else    
    echo "Invalid email"
fi