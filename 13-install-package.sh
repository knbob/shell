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

yum install git -y

# now we will check if the installation success or not

if [ $? == 0 ]
then
echo " git package installed successfully"
else
echo " git package installation got failed"
fi