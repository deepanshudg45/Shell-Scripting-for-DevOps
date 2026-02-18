#!/bin/bash

read -p "Enter filename: " file

if [ -f "$file" ];then
	echo "File Exists"
else
	echo "File doesn't exists"
fi
