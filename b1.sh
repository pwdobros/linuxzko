#!/bin/bash

echo $0
echo $1
echo $2
echo $@ #Pokazuje wszystkie argumenty
echo $# #Pokazuje liczbe argumentów

echo $1
shift
echo $1
echo $0