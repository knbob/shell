#!/bin/bash

sum(){
    echo "enter a number: "
    read num1
    echo "enter another number: "
    read num2
    add=$(($num1 + $num2))
    echo "sum of 2 given numbers is $add"
}
sum