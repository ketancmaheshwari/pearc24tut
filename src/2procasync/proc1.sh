#!/bin/bash

mkdir -p out
sleep $(shuf -i 20-60 -n 1)
shuf $1 > ./out/proc_$(basename $1)
echo "./out/proc_$(basename $1)" >> jobqueue

