#!/bin/bash
for ((i=1; i <=12; i++))
do
let rnd=$RANDOM
let res=$1*rnd  
echo "Обрабока параметра $i дала $res = $1 * $rnd"
shift
done
