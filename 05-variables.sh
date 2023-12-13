#!/bin/bash


# THIS programme will take user credentials from terminal but its exposed to external

# USERNAME=$1
# PASSWORD=$2
# echo "username is : $USERNAME and password is : $PASSWORD "


# This programe will take inputs from user while running the programme.

# echo "enter your user name: "

# read USERNAME    # this command will take input from user and stores in variable --> read <variable name>

# echo "username is : $USERNAME and password is : PASSWORD "



# Above programme exposes the values to the external. To hide the values we need to use read -s command.

echo "enter your user name: "
read -s USERNAME    # this command will take input from user and stores in variable --> read <variable name>

echo "enter your password: " # this line will print first and then asks the input from user while running.
read -s PASSWORD
echo "username is : $USERNAME and password is : $PASSWORD "