#!/bin/bash

NUMBER1=$1
NUMBER2=2

DIV=$(($NUMBER1 / $NUMBER2))
REM=$(($NUMBER1 % $NUMBER2))
echo "Quatient is $DIV"
echo "Remainder is $REM"

if [ $REM == 0 ]
then
echo "Given number $NUMBER1 is even number"
else
echo "Given number $NUMBER1 is odd number"
fi