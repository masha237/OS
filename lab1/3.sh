#!/bin/bash
echo -e "1 -- nano\n2 -- vi\n3 -- links\n4 -- exit"
while true
do
	read type
	case $type in 
"1") 
	nano
	break
	;;
"2") 
	vi
	break
	;;
"3") 
	links
	break
	;;
"4")
	exit 0
	;;
esac	
done	

				
