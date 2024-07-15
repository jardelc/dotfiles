#!/bin/bash

# Read filelist.txt and install files/folders to user's home directory
while read -r source_path; do
    home_path="$HOME/$source_path"
    repo_path="$source_path"

    # Remove existing target if it exists
    if [ -e "$home_path" ]; then
        # echo "Removing existing target: $home_path"
        rm -rf "$home_path"
    fi

    # Ensure target directory exists
    mkdir -p "$(dirname "$home_path")"

    # Copy source_path to home_path
    if [ -d "$repo_path" ]; then
        # echo "Copying directory contents: $repo_path to $home_path"
        cp -r "$repo_path" "$home_path"
    elif [ -f "$repo_path" ]; then
        # echo "Copying file: $repo_path to $home_path"
        cp "$repo_path" "$home_path"
    else
        # echo "Creating empty placeholder: $home_path"
        touch "$home_path"
    fi
done < filelist.txt
