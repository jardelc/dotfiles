#!/bin/bash

# Read filelist.txt and retrieve files/folders from user's home directory to repository
while read -r source_path; do
    home_path="$HOME/$source_path"
    repo_path="$source_path"

    # Remove the existing directory or file in the repository
    if [ -d "$repo_path" ]; then
        rm -rf "$repo_path"
    elif [ -f "$repo_path" ]; then
        rm -f "$repo_path"
    fi

    # Ensure target directory exists in the repository
    if [ -d "$home_path" ]; then
        mkdir -p "$repo_path"
        cp -r "$home_path/"* "$repo_path"
    else
        mkdir -p "$(dirname "$repo_path")"
        cp "$home_path" "$repo_path"
    fi
done < filelist.txt
