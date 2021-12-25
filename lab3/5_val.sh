#!/bin/bash

expr=1
cur_op="+"

(tail -f 5_fifo) |
while true
do
	read line
	if [[ $line == "QUIT" ]]
	then
		echo "QUIT"
		killall tail
		exit 0
	elif [[ $line == "+" ]]
	then	
		cur_op="+"
	elif [[ $line == "*" ]]
	then	
		cur_op="*"
	elif [[ $line =~ [0-9]+ ]]
	then
		case $cur_op in
			"+")
				expr=$(($expr + $line))
				echo $expr
				;;
			"*")
				expr=$(($expr * $line))
				echo $expr
				;;
                 esac
         else
         	echo "STOP"
		killall tail
		exit 1	
	fi
done
