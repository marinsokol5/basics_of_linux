#!/bin/bash

text=$(cat capitals.txt)
echo $text
OPTIONS=()
while read p
do
   arr=($p)
  tmp="${arr[-1]}" 
  echo $tmp  
   OPTIONS+=($tmp);
done <<< "$(cat capitals.txt)"

OPTIONS=("Zagreb London")


#while read p 
#do	
#  arr=($p)
#  tmp="${arr[-1]}" 
#   OPTIONS[$i]="$tmp"
#        i=$((i+1))
#done < capitals.txt

select opt in $OPTIONS; do
curl -s wttr.in/$opt
done

