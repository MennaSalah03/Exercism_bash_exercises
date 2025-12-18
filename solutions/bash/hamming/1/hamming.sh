#!/usr/bin/env bash

DNA1=$1
DNA2=$2
HAMMING_DISTANCE=0
# 3 cases
# strands must be of equal length
# return hamming distance
# one or both DNAs nnot provided: Usage: hamming.sh <string1> <string2> 

if [ $# -ne 2 ]
then
    echo "Usage: hamming.sh <string1> <string2>"
    exit 1
fi

if [[ ${#DNA1} != ${#DNA2} ]]
then
    echo "strands must be of equal length"
    exit 2
fi

for (( idx=0; idx < ${#DNA1} ; idx++ ))
do
    if [[ "${DNA1:idx:1}" != "${DNA2:idx:1}"  ]]
    then
        (( HAMMING_DISTANCE++ ))
    fi
done

echo $HAMMING_DISTANCE