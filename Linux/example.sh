#!/bin/bash
ls="ls -lah --color=auto"
passwd="/etc/passwd"
home="/home/sysadmin/backup"
name=(whoami)

echo "welcome  $name"
echo "backing up"
mkdir $home
cp $passwd $home

$ls $home
