#!/bin/bash
<<info
This create new users and print verification message at the end
info

read -p "Enter username: " uname

cat /etc/passwd | grep $uname

