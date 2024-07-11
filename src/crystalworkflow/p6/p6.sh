#!/bin/bash

f1=$(echo $1|awk '{print $1}')
f2=$(echo $1|awk '{print $2}')
f3=$2

if [ -f "$3" ]
then
    rm -v "$3"
fi

cat "$f1" "$f2" >> "$f3" || exit

echo "processed by p6" >> "$f3"

echo "p6 completed."

