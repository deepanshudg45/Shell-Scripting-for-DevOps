#!/bin/bash

# Function to greeet a user

function greet() {

	echo "Hello, $1"
}


# Function to add two numbers

function add() {

	# num1="$2"
	# num2="$3"
	total=$(($1 + $2))
	echo "Addition is: $total"
}

greet "$1"
add "$2" "$3"
