#!/bin/bash
#Print Environment Variable

read -p "Enter an Enviroment Variable Name: " var
echo "Enviroment:${!var}"