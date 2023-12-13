#!/bin/bash

NUMBER1=$1
NUMBER2=3

DIV=$(($NUMBER1 / $NUMBER2))
REM=$(($NUMBER1 % $NUMBER2))
echo "Quatient is $DIV"
echo "Remainder is $REM"
