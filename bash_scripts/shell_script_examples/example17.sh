#!/bin/bash
#Performs a Logical Operation Based on User Input
read -p "Enter two values(true,false): " val1 val2


if [[ $val1 != true && $val1 != false ]]
then
    echo "Invalid value"
elif [[ $val2 != true && $val2 != false ]]
then 
    echo "Invalid value"
else 
    read -p "Enter an operation(and/or/not) to perform: " op
    case $op in 
    and) if [[ $val1 == true && $val2 == true ]]
         then
            echo "Result: true"
         else 
            echo "Result: false"
         fi ;;

    or) if [[ $val1 == true || $val2 == true ]]
        then 
            echo "Result: true"
        else 
            echo "Result: false"
        fi ;;
    
    not) if [ $val1 == true ]
         then 
            echo "val1 Result: false"
         else 
            echo "val1 Result: true"
         fi

         if [ $val2 == true ]
         then 
            echo "val2 Result: false"
         else 
            echo "val2 Result: true"
         fi ;;

    *) echo "Invalid operation" ;;
esac
fi 

