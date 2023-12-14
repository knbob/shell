#!/bin/bash

# this programme introducing functions concept
ID=$(id -u)

VALIDATE(){
    if [ $? == 0 ]
    then
    echo "package installed successfully"
    else
    echo "package installation failed"
    fi
}

yum install gitt -y
VALIDATE