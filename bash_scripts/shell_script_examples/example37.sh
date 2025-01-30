#!/bin/bash
#Print Numbers from 5 to 1
echo "using for: "
for(( i=5; i>0 ;i-- ))
do
    echo "$i"
done
echo " "
echo "using until: "
n=5
until [ $n == 0 ]
do 
    echo "$n"
    ((n--))
done
