#!/bin/bash

# Read filelist.txt and install files to user's home directory
while read -r source_path; do
    target_path="$HOME/$source_path"

    # Ensure target directory exists
    mkdir -p $(dirname "$target_path")

    # Copy source_path to target_path
    cp -r "$source_path" "$target_path"
done < filelist.txt
