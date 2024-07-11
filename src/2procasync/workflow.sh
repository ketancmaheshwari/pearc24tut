#!/bin/bash

parallel ./proc1.sh {} ::: ./inputs/*.txt &
>jobqueue; tail -n+0 -f jobqueue | parallel -u ./proc2.sh {}

