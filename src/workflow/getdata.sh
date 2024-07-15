#!/bin/bash
set -eu
mkdir -p data
function cleanup() {
  \rm -f ./data/earth*.jpg
}

while true
do
  ts=$(date +%s)
  curl -s https://cdn.star.nesdis.noaa.gov/GOES16/ABI/SECTOR/se/GEOCOLOR/1200x1200.jpg --output ./data/earth${ts}.jpg
  sleep 15
  trap cleanup EXIT
done

# Other regions
# for i in cgl ne nr se sp sr pr pnw; do curl -s https://cdn.star.nesdis.noaa.gov/GOES16/ABI/SECTOR/$i/GEOCOLOR/1200x1200.jpg --output ./data/$i.jpg; done

