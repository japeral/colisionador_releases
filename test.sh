#!/bin/bash

# Check for Architecture
arch=$(uname -m)
if   [[ "$arch" == "x86_64" ]]; then
    ./colisionador_x86_64 -list puzzle_r160list_sorted.csv -puzzle 0 -threads 1 -start_pk_bin 0000000000000000000000000000000000000000000000000000000000000001
elif [[ "$arch" == "aarch64" ]]; then  
    ./colisionador_armv7l -list puzzle_r160list_sorted.csv -puzzle 0 -threads 1 -start_pk_bin 0000000000000000000000000000000000000000000000000000000000000001
elif [[ "$arch" == "k1om" ]]; then  
    ./colisionador_k1om-mpss.mic -list puzzle_r160list_sorted.csv -puzzle 0 -threads 1 -start_pk_bin 0000000000000000000000000000000000000000000000000000000000000001
else
    echo "Not compatible architecture"
fi

cat found.txt