#!/bin/bash
<<info
This script provides various user management functions like create,delete,list
info


#-------User creation-------

function create_user(){
  read -p "Enter username to create: " uname
  if [ "$uname" == "$(grep $uname /etc/passwd | awk -F: '{print $1}')" ] 
  then
    echo "<<====User $uname already exist====>>"
  else
    read -p "Enter user password: " pword
    sudo useradd $uname
    echo -e "$pword\n$pword" | sudo passwd "$uname" > /dev/null 2>&1   #give password and password in next line(-e) as input to passwd command
    echo "<<====User $uname created successfuly====>>"
  fi
}

#--------User deletion--------

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

#-------Password reset-------

function passwd_reset(){
  read -p "Enter username for password reset: " uname
  if [ "$uname" == "$(grep $uname  /etc/passwd | awk -F: '{print $1}')" ]
  then
    read -p "Enter new password: " pword
    echo -e "$pword\n$pword" | sudo passwd "$uname" > /dev/null 2>&1
  else
    echo "<<====User $uname doesn't exist====>>"
  fi
}

#-------List all user--------
function list_user(){
cat /etc/passwd | awk -F: '{print $1" "$3}' # print column 1 and 3 of passwd file. Using " " to add between columns
#Below command will show Username,UID,home directory and shell
#cat /etc/passwd | awk -F: '{print $1" "$3" "$6" "$7}'
}

#------Help guide-----------
function help(){
echo -e "Use '-c' argument to create a new user\nUse '-d' argument to delete a user\nUse '-r' argument to reset password of a user\nUse '-l' argument to list all user along with their UID\nUse '-n' argument to change username"
}

#------Change username------
function change_username(){
  read -p "Enter username to be changed: " uname
  if [ "$uname" == "$(grep $uname  /etc/passwd | awk -F: '{print $1}')" ]
  then
    read -p "Enter new username: " nname
    sudo usermod -l $nname $uname
    echo "<<====Username $uname changed to $nname====>>"
  else
    echo "<<====User $uname doesn't exist====>>"
  fi
}


if [ "$1" == "-c" ]
then
  create_user
elif [ "$1" == "-d" ] 
then
  user_delete
elif [ "$1" == "-r" ]
then
  passwd_reset
elif [ "$1" == "-l" ]
then
  list_user
elif [ "$1" == "-h" ]
then
  help
elif [ "$1" == "-n" ]
then
  change_username
else
  echo "Use '-h' argument for help"
fi


<<info
'-F:' sets ':' as the field separator instead of default space because 'passwd' file uses ':' as field seprator
/dev/null 2>&1 Discards standard output including errors by using '2>&1'. '2>' is used for redirecting standard error.
info
