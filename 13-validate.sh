#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]; then
	echo "Please run this script with elevated privileges"
	exit 1
else 
	echo "Please Proceed with script"
fi

echo "==========Proceeding========="


validate(){
  if [ $1 -ne 0 ]; then
    echo "$2 ..failed"
    exit 1
  else 
    echo "nginx successfully installed"
  fi
}

dnf install nginx -y 

validate $? "nginx installation"

echo "Happy Diwali..."
