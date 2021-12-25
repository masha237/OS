#!/bin/bash
PIDS=$(ps aux | awk -F " " '{print $2}')
> 4.txt
for CUR_PID in $PIDS
do
	PPID_=$(cat 2>/dev/null "/proc/$CUR_PID/status" | grep "PPid" | awk -F " " '{print $2}')
	SUM=$(cat 2>/dev/null "/proc/$CUR_PID/sched" | grep "sum_exec_runtime" | awk -F " " '{print $3}')
	SWI=$(cat 2>/dev/null "/proc/$CUR_PID/sched" | grep "nr_switches" | awk -F " " '{print $3}')
	if [ -n "$SWI" ]
	then
		ART=$(echo "scale=5; $SUM / $SWI" | bc -l) 
		echo "ProcessID=$CUR_PID : Parent_ProcessID=$PPID_ : Average_Running_Time=$ART" >> 4.txt
	fi
done

sort -k3 -t "=" -h -o 4.txt 4.txt
