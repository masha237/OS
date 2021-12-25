#!/bin/bash
> track1
while [[ True ]]
do
	echo $(date) >> track1	
        top -b -n 1 | head -n 9 | tail -n 6 >> track1
        echo -e "\n" >> track1
        sleep 3s
done
