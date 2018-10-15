#!/bin/sh

export TIMER=$((60*$(yad --entry)))

while [ $TIMER -gt 0 ]
do
	export TIMER=$(($TIMER-1))
	echo $TIMER
	sleep 1
done
unset TIMER
