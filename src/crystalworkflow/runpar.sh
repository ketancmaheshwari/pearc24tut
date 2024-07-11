#!/bin/bash

mkdir -p p{1..5}/outdir

parallel --link p1/p1.sh {1} {2} ::: inputs/in{1..6}.txt ::: p1/outdir/out{1..6}.txt &

#depends on p1/outdir/out{1..6}.txt
touch q.p1 ; tail -n+0 -f q.p1 | parallel -u --link p2/p2.sh {1} {2} :::: - ::: p2/outdir/out{1..6}.txt &

#depends on p1/outdir/out{1..6}.txt
touch q.p1 ; tail -n+0 -f q.p1 | parallel -u --link p3/p3.sh {1} {2} :::: - ::: p3/outdir/out{1..6}.txt &

#depends on p2/outdir/out{1..6}.txt
touch q.p2 ; tail -n+0 -f q.p2 | parallel -u --link p4/p4.sh {1} {2} :::: - ::: p4/outdir/out{1..6}.txt &

#depends on p3/outdir/out{1..6}.txt
touch q.p3 ; tail -n+0 -f q.p3 | parallel -u --link p5/p5.sh {1} {2} :::: - ::: p5/outdir/out{1..6}.txt & 

#depends on p4/outdir/out{1..6}.txt and p5/outdir/out{1..6}.txt
(stdbuf -oL paste <(touch q.p4 ; tail -n+0 -f q.p4) <(touch q.p5 ; tail -n+0 -f q.p5)) | parallel -u --link p6/p6.sh :::: - ::: outputs/out{1..6}.txt

