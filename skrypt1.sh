#!/bin/bash

if [ $# -ne 3 ]
then
    echo "Call:"
    echo "progName EXT SIZE DIR"
    echo ""
    echo "EXT - extension of the file you want to"
    echo "SIZE - size of file in bytes"
    echo "DIR - directory where you want to copy the files"
else
    isFileName=false
    currentFileSize=0
    totalSize=0
    selectedSize=0
    counter=1

    for v in $(find . -type f -name "*.$1" -printf "%s %p\n")
    do
        if [ "$isFileName" = false ]
        then
            currentFileSize=$v 
            isFileName=true
        else
            if [ -f "$v" ]
            then
                if [ $currentFileSize -gt $2 ]
                then
                    selectedSize=$((selectedSize + currentFileSize))
                    echo "$counter: Copy $v of size $currentFileSize"
                    counter=$((counter + 1))
                    cp "$v" "$3"
                fi
                totalSize=$((totalSize + currentFileSize))
            fi
            isFileName=false
        fi
    done

    echo "Summary:"
    echo "Total size of files with extension $1: $totalSize bytes"
fi
