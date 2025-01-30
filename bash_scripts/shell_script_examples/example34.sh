#!/bin/bash
#Reverse a Sentence
read -p "Enter a sentence: " str
rev_str=$(echo "$str" | awk '{ for( i=NF;i>0;i--) printf("%s ",$i); print "" }')
echo "The reversed sentence is: $rev_str"
