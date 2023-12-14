#!/bin/bash

sum(){
    echo "enter a number: "
    read num1
    echo "enter another number: "
    read num2
    add=$(($num1 + $num2))
    echo $add
}
sum