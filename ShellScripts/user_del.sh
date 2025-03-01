#!/bin/bash
<<info
This script delete a user and print verification message at the end
info



function user_delete(){
read -p "Enter username to delete: " uname
  if [ "$uname" == "$(grep $uname  /etc/passwd | awk -F: '{print $1}')" ]
  then
    sudo userdel -r $uname > /dev/null 2>&1
    echo "<<====User $uname deleted successfully====>>"
  else
    echo "<<====User $uname doesn't exist====>>"
  fi
}

read -p "Type 'd' to delete a user: " input
if [ "d" == "$input" ]
then
  user_delete
fi

