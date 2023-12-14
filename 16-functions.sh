#!/bin/bash

# installing a package and validating it through a funcion

ID=$(id -u)

VALIDATE(){
    if [ $1 == 0 ]
    then
    echo "$2 successfully"
    else
    echo "$2 failed"
    fi
}

yum install git -y
VALIDATE $? "Installing git package"