#!/bin/bash

pid="$(pgrep -f zad2_2)"

while true
do
	sleep 1
	sigval=$((1+RANDOM%3))
	case $sigval in 
		1)
			kill -1 $pid
			echo "kapsule++"
		;;
		2)
			kill -3 $pid
			echo "komprimirane++"
		;;
		3)
			kill -4 $pid
			echo "sumece++"
		;;
	
	esac
done
