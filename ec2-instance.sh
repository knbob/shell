#!/bin/bash

AMI=ami-03265a0778a880afb
SG_ID=sg-090563ec8e2cd0ae4
HOSTED_ZONE_ID=Z08178632CFH6K6LABWUB
DOMAIN_NAME="knbob.online"
INSTANCES=("mongodb" "redis" "mysql" "rabbitmq" "cart" "catalogue" "user" "shipping" "payment" "web")

for i in "${INSTANCES[@]}"
do
    if [ $i == "mongodb" ] || [ $i == "mysql" ] || [ $i == "shipping" ]
    then
        INSTANCE_TYPE="t3.small"     #if you want t3.small just uncomment this line and comment below line
        #INSTANCE_TYPE="t2.micro"
    else
        INSTANCE_TYPE="t2.micro"
    
    fi
    IP_ADDRESS=$(aws ec2 run-instances --image-id $AMI --instance-type $INSTANCE_TYPE  --security-group-ids $SG_ID --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$i}]" | jq -r '.Instances[0].PrivateIpAddress')
    echo "created $i instance: $IP_ADDRESS"

    aws route53 change-resource-record-sets --hosted-zone-id $HOSTED_ZONE_ID --change-batch '
    {
            "Changes": [{
            "Action": "UPSERT",
                        "ResourceRecordSet": {
                            "Name": "'$i.$DOMAIN_NAME'",
                            "Type": "A",
                            "TTL": 300,
                            "ResourceRecords": [{ "Value": "'$IP_ADDRESS'"}]
                        }}]
    }
    '

done
