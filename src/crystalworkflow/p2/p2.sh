#!/bin/bash

if test "$#" != 2 
then
    echo "wrong invocation..exiting."
    exit 3
fi

if [ -f "$2" ]
then
    rm -v "$2"
fi

cat "$1" >> "$2" || exit

echo "processed by p2" >> "$2"

echo "$2" >> ./q.p2
