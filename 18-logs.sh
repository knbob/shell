#!/bib/bash

#This program introduces the log entry to a log file.
#rediction 1>>logfile -- entries if command success 2>>loggile -- entries
#if command failure &>>logfile -- entries of both success and failure.

ID=$(id -u)
TIMESTAMP=$(date +%F:%H:%M:%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

yum install mysql -y &>> $LOGFILE

# VALIDATE(){
#     if [ $1 == 0 ]
#     then
#     echo " $2 is success"
#     else
#     echo "$2 is failed"
#     fi
# }

# if [ $ID == 0 ]
# then
# echo "user logged in as root user"
# else
# echo " Please loggin as root user"
# exit 1
# fi

# yum install git -y &>> $LOGFILE
# VALIDATE $? "Installing git package"
# yum install nginx -y &>> $LOGFILE
# VALIDATE $? "Installing nginx package"