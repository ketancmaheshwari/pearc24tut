#!/bin/bash

<<something missing here>> | parallel -k -j8 'printf "\nTimestamp:{}\n"; convert ./data/*_{}.jpg -fuzz 10% -fill white -opaque white -fill black +opaque white -format "%[fx:100*mean] " info:'

