#!/bin/bash

#this programm to install a package on server


ID=$(id -u)

if [ $ID == 0 ]
then
echo "User logged in as root user"
else
echo "user logged in as normal user"
exit 1         # this command will exit from the programme.
fi

yum install nginx -y
echo "checking the status after exit 1 command"