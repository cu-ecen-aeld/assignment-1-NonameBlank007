#!/bin/bash

# check arg count > 2
if [ $# -ne 2 ]; then
    echo "usage: $0 <filedir> <write-string>"
    exit 1
fi

# setup write file and dir names
writefile=$1
writestr=$2
dir=$(dirname "$1")

# !exist create and if error exit
if [ ! -d "$dir" ]; then
    mkdir -p "$dir"
    if [ $? -ne 0 ]; then
        echo "could not create dir: $writefile" 
        exit 1
    fi
fi

# write/overwrite to file
echo "$writestr" > "$writefile"

# exit unsuccessfull
if [ $? -ne 0 ]; then
        echo "could not create dir or write file" 
    exit 1
else 
    echo "File created and written to successfully: $writefile"
fi
