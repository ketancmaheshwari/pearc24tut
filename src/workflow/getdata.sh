#!/bin/bash
set -eu
mkdir -p data
function cleanup() {
  \rm -f ./data/*.jpg
  \rm -f q.proc
}

while true
do
  ts=$(date +%s) # timestamp
  # download image data from 8 regions in parallel
  parallel -j8 "curl -s https://cdn.star.nesdis.noaa.gov/GOES16/ABI/SECTOR/{}/GEOCOLOR/1200x1200.jpg --output ./data/{}_${ts}.jpg" ::: cgl ne nr se sp sr pr pnw
  echo $ts >> q.proc
  sleep 60
  trap cleanup EXIT
done

