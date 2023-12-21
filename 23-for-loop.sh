#!/bin/bash

#Practicing the for loop

# for ((i=1; i<100; i++))
# do
#     echo "$i"
# done


INSTANCES=("web" "catalogue" "cart")

for i in $INSTANCES
do
    echo $i
done