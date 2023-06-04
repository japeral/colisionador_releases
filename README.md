# colisionador_releases Repository, by Jose Peral

# Setup instructions:
1. Clone Colisionador_releases repo $git clone https://www.github.com/japeral/colisionador_releases colisionador
2. Execute ./download_latest_list.sh
    - If permission errors, run $chmod 777 *.sh
3. Rename the downloaded file to 'r160list_sorted.csv"
4. Execute ./test.sh
    - Puzzle solutions to parts #1,2,3,4,5... will be stored in found.txt file.

# Run instructions:
5. Execute ./run.sh to start colliding for puzzle 66 private key.

# Additional binary parameters
./colisionador_x86_64 --help

# In case of finding some private key with balance:
- Import the WIF into a fully synced Bitcoin Code node.
- Transfer the balance to another BTC wallet where you control the private keys.
- Please consider donating something to me, Thanks: bc1q7gn92ny4c7gd309phkmd24naw8rq2fend44mzj

# New features, improvements and Contact
- If interested to add features, please contact me by email at: japeralsoler@gmail.com

# Benchmark
Raspberry pi 4B [ARM v7 (4 core) - 64bit linux os @ 1900Mhz] -> @ 8 threads ~  33K keys/s (total)
Intel® Xeon® E5-4627 v4 @ 2.60GHz, (10 cores - 10 logical)   -> @24 threads ~ 249K keys/s (total)
Intel® Core™ i7-10850H @ 2.70GHz, (6 cores - 12Logical)      -> @24 threads ~ 220K keys/s (total)






]