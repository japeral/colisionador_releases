#!/bin/bash

# Check for Architecture
if [[ $(uname -m) == "x86_64" ]]; then
    ./colisionador_x86_64 -list r160list_sorted.csv -puzzle 66 -rand_pk -threads 24
else    
    ./colisionador_armv7l -list r160list_sorted.csv -puzzle 66 -rand_pk -threads 24
fi

cat found.txt