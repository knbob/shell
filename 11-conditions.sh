#!/bin/bash

echo "enter first number: "
read NUM1
echo "enter second number: "
read NUM2
echo "enter third number: "
read NUM3

if [ $NUM1 -gt $NUM2 ] && [ $NUM1 -gt $NUM3]
echo "first number $NUM1 is greatest"
elif [ $NUM2 -gt $NUM1 ] && [ $NUM2 -gt $NUM3]
echo "second number $NUM2 is greatest"
else
echo "third number $NUM3 is greatest"
fi