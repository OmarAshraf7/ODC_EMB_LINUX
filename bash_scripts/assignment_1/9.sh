#!/bin/bash
#Write a shell script that converts all filenames in a directory to lowercase

# Set directory to current directory
read -p "Enter a directory: " dir
for file in "$dir"/*; do
  if [ -f "$file" ]; then
    # Get the lowercase version of the filename
    lower_case=$(echo "$file" | tr '[:upper:]' '[:lower:]')

    # Rename the file to the lowercase version
    mv "$file" "$lower_case"
  fi
done

echo "All filenames in the current directory have been converted to lowercase."
