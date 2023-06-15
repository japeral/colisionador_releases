#!/bin/bash

# Check for Architecture
if [[ $(uname -m) == "x86_64" ]]; then
    ./colisionador_x86_64 -puzzle 66
else    
    ./colisionador_armv7l -puzzle 66
fi

cat found.txt