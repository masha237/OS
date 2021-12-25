#!/bin/bash
> report2.log
arr=()
while true
do
	
	for (( a = 0; a < 100000; a++ ))
	do
		for (( i = 0; i < 10; i++ ))
		do
			arr+=("$i")
		done
	done
	echo "${#arr[@]}" >> report2.log
done
