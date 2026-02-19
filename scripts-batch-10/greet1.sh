#!/bin/bash

if [ -z "$1" ]
then
	echo "Usage: ./greet1.sh <NAME>"
	exit 1
fi

echo "Hello,$1"
