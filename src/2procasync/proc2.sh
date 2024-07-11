#!/bin/bash

mkdir -p out
shuf $1 > ./out/f_$(basename $1)
echo "Done for $1”

