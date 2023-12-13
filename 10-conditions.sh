#!/bin/bash

echo "enter a number: "
read NUM1

if [ $NUM1 -lt 0 ]
then
echo "given number $NUM1 is negative number"
else
echo "given number $NUM1 is positive number"
fi