#!/bin/bash
PIDS=$(ps aux | sed 1d | awk -F " " '{print $2}')

> tmp.txt
for CUR_PID in $PIDS
do
	BEG=$(cat 2>/dev/null "/proc/$CUR_PID/io" | grep "read_bytes" | awk -F " " '{print $2}')
	if [[ -n $BEG ]]
	then
		echo $CUR_PID $BEG >> tmp.txt
	fi
done

sleep 20s

>ans.txt
for CUR_PID in $PIDS
do
	END=$(cat 2>/dev/null "/proc/$CUR_PID/io" | grep "read_bytes" | awk -F " " '{print $2}')
	BEG=$(grep "^$CUR_PID " tmp.txt | awk -F " " '{print $2}')
	
	if [[ -n $END && -n $BEG ]]
	then  
		echo "$(($END-$BEG)):$CUR_PID:$(cat /proc/$CUR_PID/cmdline | tr "\0" " ")" >> ans.txt
	fi
done
sort -k1 -r -t " " ans.txt | head -n3  
