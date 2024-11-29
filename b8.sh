#!/bin/bash

helloWorld(){
    echo "Hello World"
}

helloWorld

var1='a'
var2='b'

function TestVar(){
    var1='c'
    local var2='d'

    echo "Inside function: $var1, $var2"
}

echo "Before function call: $var1, $var2"

TestVar

echo "After function call: $var1, $var2"

function testRet(){
    return="Some result"
    return 123
}

testRet

echo $?