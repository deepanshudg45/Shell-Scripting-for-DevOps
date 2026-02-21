#!/bin/bash

#global_var="I am global variable"

use_local() {
	local local_var="I am local variable"
}

use_global() {
	non_local_var="I am not local"
}

use_local

echo "Trying to access local variable from outside function: "
echo "${local_var:-Not accessible}"
echo

use_global

echo "Accessing non local outside function: "
echo "${non_local_var}"
echo

echo "Accessing Global:"
echo "${global_var:=I am global var}"
