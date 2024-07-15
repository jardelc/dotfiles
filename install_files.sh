#!/bin/bash

# Read filelist.txt and install files/folders to user's home directory
while read -r source_path; do
    target_path="$HOME/$source_path"

    # Ensure target directory exists
    mkdir -p "$(dirname "$target_path")"

    # Copy source_path to target_path
    if [ -d "$source_path" ]; then
        # If it's a directory, copy the contents
        cp -r "$source_path/"* "$target_path"
    else
        # If it's a file, copy the file
        cp -r "$source_path" "$target_path"
    fi
done < filelist.txt
