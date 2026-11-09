#!/bin/bash

set -e
userid=$(id -u)
D=$(date)

log_folder="/var/log/install"
log_files="${log_folder}/$0.log"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

mkdir -p $log_folder

trap 'echo "Error at $LINENO", command: "$BASH_COMMAND"' ERR

if [ $userid -ne 0 ]; then
	echo "Please run this script with elevated privileges"
	exit 1
else 
	echo "Please Proceed with script"
fi

echo "==========Proceeding========="


validate() {
  if [ $1 -ne 0 ]; then
    echo -e "$2 ..${R}failed" | tee -a $log_files
    exit 1
  else 
    echo -e "$2 ${G}successfully installed" | tee -a $log_files
  fi
}

for package in $@

do

dnf list installed ${package} &>>$log_files

 if [ $? -ne 0 ]; then
	 echo "${package} going to install"
	 dnf install ${package} -y >>$log_files
         validate $? "installing ${package}"
 else
	 echo -e "${package} already installed..${Y}Skipping."
 fi

done

echo -e "${N}Happy Diwali folks $D"
