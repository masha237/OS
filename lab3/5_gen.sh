#!/bin/bash
while true
do
	read LINE
	echo "$LINE" >> 5_fifo
	if [[ $LINE == "QUIT" ]]
	then
		exit 0
	fi
		
	if [[ ! $LINE =~ [0-9]+ && $LINE != "+" && $LINE != "*" ]]
	then
		echo "$LINE is incorrect input"
		exit 1
	fi
done
