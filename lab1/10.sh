#!/bin/bash
man bash | grep -E -o [^[:space:]]\{3\}[^[:space:]]+ | sort | uniq -c | sort -k1 -n -r | head -3
