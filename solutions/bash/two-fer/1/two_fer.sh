#!/usr/bin/env bash

# Script that takes string arguments and deals only with the first one (cookie receiver) and announces their kindness with the receiver's name if known, otherwise, it says you.

receiver=$1

if [ -z "$receiver" ]
then
    receiver="you"
fi
  
    echo "One for $receiver, one for me."
