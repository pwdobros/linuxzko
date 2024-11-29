#!/bin/bash

#To działa
v=3 
echo $v

#To nie będzie działać ze spacją
#w = 3
#echo $w

x=3
y=5

#To nie działa
#z=$($x+$y)
#echo $z

#To działa
z=$(($x+$y))
echo $z

echo "Suma: $z"
t="foo bar"
echo "Text is: $t"

n=3.1
m=2.9
#To nie działa
#s=$(($n+$m))

 echo $n + $m | bc
 
 w=$(echo $n + $m | bc)
 echo $w

