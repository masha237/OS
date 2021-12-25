#!/bin/bash
grep -r -o -E -h -a '[[:alnum:]]+\@[[:alnum:]]+\.[[:alnum:]]+' /etc | tr '\n' ','  > emails.lst
truncate -s-1 emails.lst
echo -e "\n" >> emails.lst
