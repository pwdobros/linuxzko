#!/bin/bash

option=$1
'
if option=="a":
    [...]
elif option=="b":
    [...]
elif option=="c":
    [...]
else:
    [...]
'



'
#C/C++ (idea)
switch (option){
    "a":
        [...]
        break
    "b":
        [...]
        break
    "c":
        [...]
        break
    default:
        [...]
        break
}


case ${option} in
    a) [...]
    b) [...]
    c) [...]
    *) [...]
esac
'

option=$1

case ${option} in
    -f)FILE=$2
        echo "file name is $FILE"
        ;;
    -d) DIR=$2
        echo "Directory name is $DIR"
        ;;
        *) echo "basename $0 usage: [-f fileName] | [-d Directory_name]"
            exit 1
        ;;
esac

