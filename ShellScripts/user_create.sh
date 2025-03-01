#!/bin/bash
<<info
This script create new users and print verification message at the end
info


function create_user(){
  read -p "Enter username: " uname
  if [ "$uname" == "$(grep $uname /etc/passwd | awk -F: '{print $1}')" ]
  then
    echo "<<====User $uname already exist====>>"
  else
    read -p "Enter user password: " pword
    sudo useradd $uname
    echo -e "$pword\n$pword" | sudo passwd "$uname" > /dev/null 2>&1
    echo "<<====User $uname created successfuly====>>"
  fi
}
read -p "Type 'c' to create new user: " input
if [ "c" == "$input" ]
then
  create_user
fi



<<info
'-F:' sets ':' as the field separator instead of default space because 'passwd' file uses ':' as field seprator
/dev/null 2>&1 Discards standard output including errors by using '2>&1'. '2>' is used for redirecting standard error.
info
