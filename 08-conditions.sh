#!/bin/bash

NUMBER1=$1

if [ $NUMBER1 -gt 100 ]
then
echo "Given number $NUMBER1 is greater than 100"

elif [ $NUMBER1 == 100 ]
then
echo "Given number $NUMBER1 is equal to 100"

else
echo "Given number $NUMBER1 is less than 100"

fi