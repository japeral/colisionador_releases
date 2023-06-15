#!/bin/bash

# Check for Architecture
if [[ $(uname -m) == "x86_64" ]]; then
    ./colisionador_x86_64 -start_pk_bin 0000000000000000000000000000000000000000000000000000000000000001
else    
    ./colisionador_armv7l -start_pk_bin 0000000000000000000000000000000000000000000000000000000000000001
fi

cat found.txt