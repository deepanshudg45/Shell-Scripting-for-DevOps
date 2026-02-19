#!/bin/bash

set -e # Exit immediately if a command fails

mkdir /tmp/devops-test || echo "Directory already exits"

cd /tmp/devops-test || {
	echo "Failed to enter directory"
	exit 1 
}

touch testfile.txt || {
	echo "Failed to create file"
	exit 1 
}

echo "Script completely successfully....."
