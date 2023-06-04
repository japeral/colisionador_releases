# Colisionador, by Jose Peral

## What is the BTC puzzle?
It is an eastern egg inside BTC blockchain, someone sent arround 65.8 BTC to 127 addresses (puzzle pieces) over the time.
This is the transaction: https://www.blockchain.com/explorer/addresses/BTC/1Czoy8xtddvcGrEhUUCZDQ9QqdRfKh697F

Each of the destination addresses have a balance that matches the puzzle pieces sequence order.

The particularity of this puzzle is the difficulty to find the private key by brute force, doubles with each piece of the puzzle, as the private key increases one bit in lenght (doubling the difficulty).

Currently the easiest puzzle piece with balance is puzzle-66 piece. This is the address, Balance is 6.60 BTC: 
https://www.blockchain.com/explorer/addresses/BTC/13zb1hQbWVsc2S7ZTZnP2G4undNNpdh5so

This way, puzzle-66 will have a private key that have bit 66 to 1, and the low significant bits unknown.

File puzzle_r160list_sorted contains all the addresses of the puzzle (even the ones with 0 Balance currently).

## Setup instructions:
This are Linux-64 bits bineries, compiled in Debian / Raspbian systems.

To run in Windows host machines, enable WSL and Debian subsystem.

1. Clone Colisionador_releases repo $git clone https://www.github.com/japeral/colisionador_releases colisionador
2. $cd colisionador
3. Execute ./download_latest_list.sh to get a copy of all the BTC addresses with balance at begining of May 2023.
    - If permission errors, run $sudo chmod 777 *.sh
4. Rename the downloaded file to 'r160list_sorted.csv'
    - This file has to have the entries sorted, or the binary search algorithm will not work well.
5. Execute ./test.sh
    - Search uses puzzle_r160list_sorted.csv addresses, and starts in private key 0 (all 256 bits 0), with only one thread.
    - If everything is all right you should be finding the easiest pieces of the puzzle stright away. 
    - Private keys will be stored in found.txt file.
    - Yes this really works, you see?

## Run instructions:
To start colliding for puzzle 66 private key execute$ ./start.sh 
    - If permission errors, run $sudo chmod 777 colisionador*
    - If interested to search another piece, edit the -puzzle parameter inside the .sh file.

## Additional binary parameters
$./colisionador_x86_64 --help

## In case of finding some private key with balance:
- Import the WIF into a fully synced Bitcoin Core node. 
- If not sure how to do that, contact and attach the found.txt file at japeralsoler@gmail.com.
- Transfer the balance to another BTC wallet where you control the private keys.
- Please consider donating something to me, Thanks: bc1q7gn92ny4c7gd309phkmd24naw8rq2fend44mzj

## New features, improvements and Contact
- If interested to add new features, please contact me by email at: japeralsoler@gmail.com
- I am currently working to port the code to support GPU acceleration.

## Benchmark
|                           Hardware                            | Threads | Search speed keys/s |
| :-------------------------------------------------------------| :-----: | :-----------------: |
| Raspberry pi 4B [ARM v7 (4 core) - 64bit linux os @ 1900Mhz]  |    8    |         33K         |
| Intel® Xeon® E5-4627 v4 @ 2.60GHz, (10 cores - 10 logical)    |   24    |        249K         |
| Intel® Core™ i7-10850H @ 2.70GHz, (6 cores - 12 logical)      |   24    |        220K         | 

## The Probability Maths...
The mean time to find the private that opens Puzzle-66 by burteforce, with one CPU thread on an average personal computer @22K keys/s per thread is:

Mean time = (Number of total combinations) / (search speed) = (2^65) / (22,000) ≈ 1.6779404 × 10^15 seconds

To days: 1.6779404 × 10^15 s / (60 s * 60 min * 24 h) ≈ 1.9430023 × 10^10 days

To Years: 1.9430023 × 10^10 days / 365 days ≈ 5.324932 × 10^7 years

That means: 53,249,320,000 years

So, consider executing this binary some kind of lottery...

Good luck!

----------------------------------------------------------------
BTC Donations: bc1q7gn92ny4c7gd309phkmd24naw8rq2fend44mzj