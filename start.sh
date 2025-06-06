#!/bin/bash

# Check for Architecture
arch=$(uname -m)
if   [[ "$arch" == "x86_64" ]]; then
    ./colisionador_x86_64 -puzzle 71
elif [[ "$arch" == "aarch64" ]]; then  
    ./colisionador_armv7l -puzzle 71
elif [[ "$arch" == "k1om" ]]; then  
    ./colisionador_k1om-mpss.mic -puzzle 71
else
    echo "Not compatible architecture"
fi

cat found.txt