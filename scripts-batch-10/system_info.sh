#!/bin/bash

set -euo pipefail

print_header() {
	echo "====================================="
	echo "$1"
	echo "====================================="
}

system_info() {
	print_header "HOSTNAME & OS INFO"
	hostname
	uname -a
	echo
}

uptime_info() {
	print_header "UPTIME INFO"
	uptime
	echo
}

disk_usage() {
	print_header "DISK USAGE"
	#du -h / 2>/dev/null | sort -hr | head -n 5
	#du -h --max-depth=1 / 2>/dev/null | sort -hr | head -n 5
	df -h | head -n 6
	echo
}

memory_usage() {
	print_header "MEMORY USAGE"
	free -h
	echo
}

top_processes() {
	print_header "TOP 5 CPU CONSUMING PROCESSES"
	ps -eo pid,comm,%cpu --sort=%cpu | head -n 6
	echo
}

main() {
	system_info
	uptime_info
	disk_usage
	memory_usage
	top_processes
}

main
