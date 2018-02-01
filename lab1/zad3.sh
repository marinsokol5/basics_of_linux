#!/bin/bash
echo -n " Upisi rijec koja se nalazi negdje u pjesmi: "
read rijec
find -name *$rijec*.mp3 > /tmp/lab1.dat

#list=()
i=0
export i
while read line
do
	#list+=($line)
	#index=${#list[@]}
	#let "index--"	
	#echo "Pod indexom $index nalazi se $line "	
	echo "Pod indexom $i nalazi se $line"
	let "i++"
done <<< "$(cat /tmp/lab1.dat)"

#len=${#list[@]}
#echo $len
echo $i
while : ; do
    echo -n "upisite index pjesme: "
    read index
	if [ $index -lt $i ] && [ $index -ge 0 ];
		then
		break
	fi
   #if[ index<=i && index>=0 ]] || break
done

#arr=($list)
#pjesma=arr[$index]

let "index++"
pjesma=$(head -n $index "/tmp/lab1.dat" | tail -n 1) 
echo "Odabrali ste $pjesma"
nvlc $pjesma
