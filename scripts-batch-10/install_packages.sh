#!/bin/bash

# Exit if not root

if [ "$EUID" -ne 0 ];then
	echo "Please run this script as root"
	exit 1
fi

packages=("nginx" "curl" "wget")

for pkg in "${packages[@]}"
do
	echo "Checking Packages.........."

	if dpkg -s "$pkg" &> /dev/null;then
		echo "$pkg is already installed."
	else
		echo "$pkg not found. INstalling......"
		apt-get update
		apt-get install -y "$pkg"
	fi

	echo "----------------------------"
done
