#!/bin/bash
cut -d':' -f1 /etc/passwd | wc -l
for user in $(cut -d':' -f1 /etc/passwd); 
do 
	echo -n "$user ";
	ps aux | sed 1d | grep $user | awk -F " " '{print $2 " " $11}' | tr " " ":" | wc -l
done


#Посчитайте количество уникальных пользователей в системе и соберите статистику, сколько процессов запущено каждым из пользователей. Используйте утилиту ps

