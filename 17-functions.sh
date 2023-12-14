#!/bin/bash


ID=$(id -u)

VALIDATE(){
    if [ $1 == 0 ]
    then
    echo " $2 is success"
    else
    echo "$2 is failed"
    fi
}

if [ $ID == 0 ]
then
echo "user logged in as root user"
else
echo " Please loggin as root user"
exit 1
fi

yum install git -y
VALIDATE $? "Installing git package"
yum install nginx -y
VALIDATE $? "Installing nginx package"