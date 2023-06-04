#!/bin/bash

# Check for Architecture
if [[ $(uname -m) == "x86_64" ]]; then
    ./colisionador_x86_64 -list puzzle_r160list_sorted.csv -start_pk_bin 0000000000000000000000000000000000000000000000000000000000000001
else    
    ./colisionador_armv7l -list puzzle_r160list_sorted.csv -start_pk_bin 0000000000000000000000000000000000000000000000000000000000000001
fi

cat found.txt