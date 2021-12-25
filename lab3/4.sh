#!/bin/bash
./inc.sh&pid1=$!
./inc.sh&pid2=$!
./inc.sh&pid3=$!


echo $pid1
echo $pid3

cpulimit -p $pid1 -l 10 &

sleep 10s
kill -s 9 $pid3
sleep 10s
killall -s 9 inc.sh
