#!/bin/bash
OPTIONS=("Zagreb London")
echo "here"
echo $OPTIONS
for opt in $OPTIONS;do	
   a=`curl -s wttr.in/$opt | head -n3 | tail -n1 | egrep -c "*rain*|*Rain*"`;
   if [ $a = '1' ]
   then
    echo "$opt" ;
	fi
	
done


