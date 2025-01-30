#!/bin/bash
#Replace the first occurance of a Word in a Sentence
read -p "Enter a sentence: " sentence
read -p "Enter a word to be replaced: " word
read -p "Enter a new word: " word2
echo "Modified sentence: ${sentence/$word/$word2}"

