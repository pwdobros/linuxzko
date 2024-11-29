#!/bin/bash

n=1

while [ $n -le 10 ]
do
    echo "n=$n"
    n=$(($n+1))
done

echo "Arguments:"

while [ $# -gt 0 ]
do
    echo $1
    shift
done

until [ $n -gt 10 ]
do
    echo "n=$n"
    n=$(($n+1))
done
