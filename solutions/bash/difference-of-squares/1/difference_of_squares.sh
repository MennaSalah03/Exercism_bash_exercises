#!/usr/bin/env bash

SqoS=0
SoSq=0

#storing command-line parameters
NUM=$2
OUTCOME=$1

 
# Square of sums
for (( i = 1; i <= "$NUM"; i++ ))
do
	(( SqoS += i ))    
done
(( SqoS = SqoS ** 2 ))

# Sum of Squares
for (( i = 1; i <= "$NUM"; i++ ))
do
	(( SoSq += (i ** 2) ))
done

# difference
Diff=$(( SqoS - SoSq ))

case $OUTCOME in

  square_of_sum)
    echo $SqoS
    ;;

  sum_of_squares)
    echo $SoSq
    ;;
  difference)
    echo $Diff
    ;;
  *)
    echo "Invalid option."
    ;;
esac