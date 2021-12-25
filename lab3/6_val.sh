#!/bin/bash

expr=1
echo $$ > .pid

line="+"

usr1()
{
	line="+"
}

usr2()
{
	line="*"
}

sigterm()
{
	echo "STOP"
	exit 0
}

trap 'usr1' USR1
trap 'usr2' USR2
trap 'sigterm' SIGTERM
while true
do
	if [[ $line == "+" ]]
	then	
		expr=$(($expr + 2))
	elif [[ $line == "*" ]]
	then	
		expr=$(($expr * 2))
	fi
	sleep 1
	echo $expr
done
