#!/bin/bash
if [[ $HOME == $PWD ]]
then 
	echo $HOME
	exit 0
else 
	echo $PWD
	echo "is not home direcroty"
	exit 1
fi		
