#!/bin/bash
for (( a = 0; a < 30; a++ ))
do
	echo "kek"
	(./newmem.bash 832912)&
	sleep 1s
done

