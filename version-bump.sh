#!/bin/bash

# Check if exactly two arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 OLD_STRING NEW_STRING"
    exit 1
fi

OLD="$1"
NEW="$2"

# Find all non-hidden files and replace the OLD string with the NEW string
find . -type f ! -name ".*" -exec grep -Il "$OLD" {} \; | while read -r file; do
    sed -i '' "s/$OLD/$NEW/g" "$file"
done

