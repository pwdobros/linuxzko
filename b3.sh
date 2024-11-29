#!/bin/bash

: '

if CONDITION; then
.....
.....
.....
.....
fi 

if CONDITION
then
...
...
...
...
fi
'

if [ $1 -gt 4 ]; then
    echo "Value $1 is greater than 4"
fi

if [ $1 -gt 4 ]; then
    echo "Value $1 is greater than 4"
elif [ $1 -lt 4 ]; then
    echo "Value $1 is lower than 4"
else
    echo "Value is equal 4"
fi


if [ $2 ]; then
    echo "String 2 exists"
else
    echo "String 2 does not exist"
fi

if [ -z $3 ]; then
    echo "String 3 does not exist"
else
    echo "String 3 exists"
fi

if [ -n $3 ]; then
    echo "String 3 exists"
else
    echo "String 3 does not exist"
fi

echo "........................."

if [ $2 = $3 ]; then
    echo "Both String are equal"
else
    echo "Different" 
fi

if [ $2 != $3 ]; then
    echo "Different"  
else
    echo "Both String are equal"
fi

echo "........................."


for i in 1 2 3 4 5 6
do
echo $i
done

echo "This script has $# parameters"
echo "Parametrs $@"
i=0
for p in "$@"
do
    i=$(($i + 1))
    echo "Parametr $i: $p"
done


n=1

while [ $n -le 10 ]
do
    echo "n=$n"
    n=$(($n+1))
done