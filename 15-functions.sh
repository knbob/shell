#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $? == 0 ]
    then
    echo "package installed successfully"
    else
    echo "package installation failed"
    fi
}

yum install git -y
VALIDATE