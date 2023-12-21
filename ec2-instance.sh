#!/bin/bash

AMI=ami-03265a0778a880afb
SG_ID=sg-090563ec8e2cd0ae4

INSTANCES=("mongodb" "redis" "mysql" "rabbitmq" "cart" "catalogue" "user" "shipping" "payment" "web")

for i in "${INSTANCES[@]}"
do
    if [ $i == "mongodb" ] || [ $i == "mysql" ]
    then
        #INSTANCE_TYPE="t3.small" if you want t3.small just uncomment this line and comment below line
        INSTANCE_TYPE="t3.micro"
    else
        INSTANCE_TYPE="t2.micro"
    
    fi
    aws ec2 run-instances --image-id $AMI --instance-type $INSTANCE_TYPE  --security-group-ids $SG_IDb3a936fce7 --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$i}]"
done
