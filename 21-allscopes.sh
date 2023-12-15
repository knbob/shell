#!/bin/bash

##----Variables-----------------
ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
TIMESTAMP=$(date +%F:%H:%M:%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

#----- redirection statement-------------------------
# 1>> for success 2>> for failure &>> for both success n failure
echo "Script execution started at $TIMESTAMP" &>> LOGFILE

#--------Function concept----------------------
#function name (){ block of code }
#--------color codes also used------------------
VALIDATE(){
    if [ $? == 0 ]
    then
    echo -e " $2.............$G SUCCESS $N"
    else
    echo -e " $2.............$R Failed $N"
    fi
}

#---------Conditions-----------------------
# If [ <expression> ] then <block of code> fi

if [ $ID == 0 ]
then
echo " Logged in as root user "
else
echo " Run the script with root access "
exit 1
fi

#----------LOOP-----------------------

for package in $@
do
    yum list installed $package &>> $LOGFILE
    if [ $? == 0 ]
    then
    echo " $package already installed......$Y SKIPPING $N "
    else
    yum install $package -y &>> $LOGFILE
    VALIDATE $? "Installatio of $package"
    fi
done
