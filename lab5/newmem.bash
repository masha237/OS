#!/bin/bash
N=$1
> report.log
arr=()
while true
do
	
	for (( a = 0; a < 100000; a++ ))
	do
		for (( i = 0; i < 10; i++ ))
		do
			arr+=("$i")
			if [ ${#arr[@]} -eq $N ]
			then
				break
			fi
		done
		if [ ${#arr[@]} -eq $N ]
		then
			break
		fi
	done
	echo "${#arr[@]}" >> report.log
	if [ ${#arr[@]} -eq $N ]
	then
		break
	fi
done
