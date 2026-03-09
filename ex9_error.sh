#!/bin/bash

file=$1

if [ -f "$file" ]; then
    cat "$file"
else
    echo "Error: file does not exist"
fi
