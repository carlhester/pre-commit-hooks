#!/usr/bin/env bash
failed=false

for file in "$@"; do
    grep -q $USER "$file" 2>&1
    if [ $? -eq 0 ] 
    then
        failed=true
    fi
done

if [[ $failed == "true" ]]; then
    exit 1
fi
