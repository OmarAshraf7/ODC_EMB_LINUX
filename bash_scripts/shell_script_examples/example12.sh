#!/bin/bash
#Generating a Random Number Between Two Given Numbers

read -p "Enter a small number:" min
read -p "Enter the great number:" max
r_ndm=$(( $RANDOM % ($max - $min + 1) + $min ))
echo "Random Number: $r_ndm"