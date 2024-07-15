#!/bin/bash
set -eu

TASK=convert
DATA=$1
echo "\nProcessing ${DATA}\n"
${TASK} ${DATA} -fuzz 10% -fill white -opaque white -fill black +opaque white -format "%[fx:100*mean]" info:
sleep 11

