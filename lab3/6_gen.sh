#!/bin/bash
while true
do
	read LINE
	
	if [[ $LINE == "TERM" ]]
	then
		kill -SIGTERM $(cat .pid)
		exit 0
	elif [[ $LINE == "+" ]]
	then
		kill -USR1 $(cat .pid)
	elif [[ $LINE == "*" ]]
	then
		kill -USR2 $(cat .pid)
	fi
done
