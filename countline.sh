#!/bin/bash

pman=$(man man | col -b | wc -l)
pls=$(man ls | col -b | wc -l)
pfind=$(man find | col -b | wc -l) 

echo "man,$pman" >> temp.txt
echo "ls,$pls" >> temp.txt
echo "find,$pfind" >> temp.txt

sort -g -k 2 -r -t ',' temp.txt > temp2.txt
echo -e "$(cat temp2.txt)"
rm temp.txt
rm temp2.txt
