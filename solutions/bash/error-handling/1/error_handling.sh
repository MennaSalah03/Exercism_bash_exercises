#!/usr/bin/env bash

# the number of arguments passed
arg1=$1
arg2=$2


# greet if string found

if [ "$#" -lt 1  ]
then
	echo "Usage: error_handling.sh <person>"
	exit 1
fi

if [ -n "$arg1" ]
then
	if [ -n "$arg2" ]
	then
		echo "Usage: error_handling.sh <person>"
		exit 1
	fi
fi

echo "Hello, $arg1"

