#!/bin/bash

LAST_PPID="-1"
SUM=0
COUNT=0

function calc {
	echo "Average_Running_Children_of_ParentID=$1 is "$(echo "scale=5; $2 / $3" | bc -l) 
}

while read line 
do
	PPID_=$(echo $line | cut -d ":" -f 2 | awk -F "=" '{print $2}')
    	ART=$(echo $line | cut -d ":" -f 3 | awk -F "=" '{print $2}' | tr "," ".")
    	ATR=0$ART
    	if [[ $LAST_PPID != $PPID_ ]]
	then
		if (( $LAST_PPID != "-1" )) 
		then
			echo $(calc $LAST_PPID $SUM $COUNT)
			SUM=0
			COUNT=0
		fi
	fi
	((COUNT++))
	SUM=$(echo "scale=5; $SUM + ${ART}" | bc -l)
	LAST_PPID=$PPID_	
    	
    	
    echo $line
done < 4.txt > 5.txt

echo $(calc $LAST_PPID $SUM $COUNT) >> 5.txt
