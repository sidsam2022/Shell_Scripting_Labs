#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]; then
	echo "Please run this script with elevated privileges"
	exit 1
else 
	echo "Please Proceed with script"
fi

echo "==========Proceeding========="

dnf install nginx -y

if [ $? -ne 0 ]; then
	echo "nginx installtion failed"
	exit 1
else 
	echo "nginx successfully installed"

fi



