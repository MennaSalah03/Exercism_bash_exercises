#!/usr/bin/env bash

# store tile number
tile=$1

if [[ $tile =~ ^[0-9]+$ ]]
then
    # error conditions
    if [ $tile -le 0 ] || [ $tile -gt 64 ]
    then
        echo "Error: invalid input"
        exit 1
    fi
    res=$(echo "2 ^ ($tile - 1)" | bc)
    echo $res
elif [ $tile = "total" ]
then
    echo "18446744073709551615"
else

    echo "Error: invalid input"
    exit -1
fi