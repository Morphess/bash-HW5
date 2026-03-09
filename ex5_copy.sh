#!/bin/bash

source=$1
destination=$2

cp "$source" "$destination"

echo "File copied from $source to $destination"
