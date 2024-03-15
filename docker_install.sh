#!/bin/bash

ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

VALIDATE(){
    if [ $? == 0 ]
    then
    echo -e " $2.............$G SUCCESS $N"
    else
    echo -e " $2.............$R Failed $N"
    fi
}

if [ $ID == 0 ]
then
echo " Logged in as root user "
else
echo -e "$R ERROR:: Run the script with root access $N "
exit 1
fi

yum install -y yum-utils
VALIDATE $? "Installing the yum-utils"


yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
VALIDATE $? "Adding docker repo"

yum install -y docker-ce
VALIDATE $? "Installing Docker"

systemctl start docker
VALIDATE $? "Starting docker"

usermod -aG docker centos
VALIDATE $? "Adding user centos to docker group"

echo " Please reboot the server"