#!/bin/bash

# check for argument > 2
if [ $# -ne 2 ]; then
    echo "usage: $0 <filedir> <text-string>"
    exit 1
fi

# exist if no dir
if [ ! -e "$1" ]; then
    echo "dir dosnt exist"
    exit 1
fi

# get number of files and matching lines
X=$(find "$1" -type f | wc -l)
Y=$(grep -r "$2" "$1" | wc -l)

# print result
echo "The number of files are $X and the number of matching lines are $Y"