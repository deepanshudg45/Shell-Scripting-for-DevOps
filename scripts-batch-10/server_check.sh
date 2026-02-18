#!/bin/bash

Service="nginx"

read -p "Do you want to check $Service status? (y/n): " input

if [ "$input" = "y" ] ; then
	systemctl status $Service

elif [ "$input" = "n" ]; then
	echo "Skipped"
else
	echo "Invalid input"
fi
