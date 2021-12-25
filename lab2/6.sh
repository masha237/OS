#!/bin/bash
PIDS=$(ps aux | awk -F " " '{print $2}')
>6.txt

for CUR_PID in $PIDS
do
	echo $CUR_PID:$(cat 2>/dev/null /proc/$CUR_PID/status | grep -i VMSIZE | awk -F " " '{print $2}')
	 
done >> 6.txt

echo $(sort -n -r -k2 -t ":" 6.txt | head -n1)

