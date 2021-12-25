#!/bin/bash

time=$(date +"%F_%R")
mkdir test && echo "catalog test was created successfully" > ~/report && touch test/$time.txt

ping -c 1 "www.net_nikogo.ru" || date +"%F_%R www.net_nikogo.ru: Name or service not known"  >> ~/report
