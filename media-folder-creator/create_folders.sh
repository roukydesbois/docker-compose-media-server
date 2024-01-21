#!/bin/bash

# Check if the input folders are provided
if [ "$#" -eq 0 ]; then
    echo "Usage: $0 folder1 folder2 folder3 ..."
    exit 1
fi

# Loop through the input folders
for folder in "$@"; do
    # Create the folder if it doesn't exist
    if [ ! -d "$folder" ]; then
        mkdir -p "$folder"
        echo "Created folder: $folder"
    else
        echo "Folder already exists: $folder"
    fi
done
