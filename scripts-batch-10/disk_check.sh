#!/bin/bash

check_disk() {
	echo "*********Checking Disk Usage (/) ************"
	df -h /
}

check_memory() {
	echo "********** Checking Memory Usage **********"
	free -h
}

main() {
	echo "==========SYSTEM RESOURCE CHECK==========="
	echo
	check_disk
	echo
	check_memory
}

main
