#!/bin/bash

echo "install psysh"
echo "==================================================================================="
echo "Enter Your Home Directory path (example : /home/username)"
read HPATH
echo "Enter Your root password "
read PASSWD

mkdir $HPATH"/installed/psysh"
cd $HPATH"/installed/psysh"
wget https://psysh.org/psysh
sudo chmod +x psysh 

