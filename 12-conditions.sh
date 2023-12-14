#!/bin/bash

#This programme to check the user is root or not

ID=$(id -u)

if [ $ == 0 ]
then
echo " User logged in as root"
else
echo " Urser logged in as normal user"
fi