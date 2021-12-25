#!/bin/bash

ps aux | sed 1d | grep $USER | awk -F " " '{print $2 " " $11}' | tr " " ":" | wc -l
ps aux | sed 1d | grep $USER | awk -F " " '{print $2 " " $11}' | tr " " ":"
