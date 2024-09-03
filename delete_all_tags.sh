#!/bin/bash

# Fetch all tags from the remote
git fetch --tags

# List all tags and delete them from the remote repository
git tag -l | while read -r tag; do
    echo "Deleting remote tag: $tag"
    git push --delete origin "$tag"
done

echo "All remote tags have been deleted."