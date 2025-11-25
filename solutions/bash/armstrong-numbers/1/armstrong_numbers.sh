#!/usr/bin/env bash

# The number of digits
num=$1
digit_count=${#num}

#initialize sum
sum=0

# looping over the digits and doing the operations
for digit in $(echo $num | fold -w1); do
	(( sum += "$digit"**"$digit_count" ))
done

if (( "$sum" == "$num" ))
then
    echo "true" # a true armstrong number
else
    echo "false"
fi