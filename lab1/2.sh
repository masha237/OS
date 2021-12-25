#!/bin/bash
read s
while [ $s != "q" ]
do
	ans=$ans$s
	read s
done
echo ${ans} > ~/lab1/test.txt
