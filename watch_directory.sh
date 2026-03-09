#!/bin/bash

WATCH_DIR="$HOME/watch"

mkdir -p "$WATCH_DIR"

echo "Watching directory $WATCH_DIR"

while true
do
    for file in "$WATCH_DIR"/*
    do 
  
        [ -e "$file" ] || continue        
 
        if [[ "$file" == *.back ]]; then
            continue
        fi

            echo "New file detected: $file"
            cat "$file"

            mv "$file" "$file.back"
       
    done
    
    sleep 5
done
