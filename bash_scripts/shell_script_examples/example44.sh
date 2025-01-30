#!/bin/bash
#Find the Smallest and Largest Elements in an Array
arr=(1 3 5 8 9 2 0 7)
echo "The array: ${arr[*]}"
min=${arr[0]}
max=${arr[1]}

for i in "${arr[@]}"
do 
    if [ $i -gt $max ]
    then    
        max=$i
    fi

    if [ $i -lt $min ]
    then    
        min=$i
    fi

done

echo "Smallest element is: $min"
echo "Largest element is: $max"
