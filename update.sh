#!/bin/bash

STRING_TO_APPEND="$1"
PATH_JS="js-link-shorteners/src/link-shorteners.txt"
PATH_PY="py-link-shorteners/link_shorteners/link-shorteners.txt"

if [ -z "$STRING_TO_APPEND" ]; then
    echo "Error: No string provided to append."
    exit 1
fi

last_char=$(echo -n "$STRING_TO_APPEND" | tail -c 1)
if [ "$last_char" != $'\n' ]; then
    # If not, add a newline to the string
    STRING_TO_APPEND="$STRING_TO_APPEND"$'\n'
fi

echo "$STRING_TO_APPEND" >> "$PATH_JS"
echo "$STRING_TO_APPEND" >> "$PATH_PY"

sort -u "$PATH_JS" -o "$PATH_JS"
sort -u "$PATH_PY" -o "$PATH_PY"
