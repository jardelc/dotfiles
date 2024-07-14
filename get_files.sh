#!/bin/bash

# Read filelist.txt and retrieve files from user's home directory to repository
while read -r source_path; do
    target_path="$HOME/$source_path"

    # Ensure target directory exists in the repository
    mkdir -p $(dirname "$source_path")

    # Copy source_path from user's home directory to target_path in the repository
    cp -r "$target_path" "$source_path"
done < filelist.txt
