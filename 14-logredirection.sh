#!/bin/bash

userid=$(id -u)

log_folder="/var/log/install"
log_files="${log_folder}/$0.log"

mkdir -p $log_folder

if [ $userid -ne 0 ]; then
	echo "Please run this script with elevated privileges"
	exit 1
else 
	echo "Please Proceed with script"
fi

echo "==========Proceeding========="


validate() {
  if [ $1 -ne 0 ]; then
    echo "$2 ..failed" | tee -a $log_files
    exit 1
  else 
    echo "$2 successfully installed" | tee -a $log_files
  fi
}

dnf install mysql8.4-server -y &>>$log_files 

validate $? "mysql installation"

echo "Happy Diwali..."
