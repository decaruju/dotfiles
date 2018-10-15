#!/bin/bash

currentLang=$(setxkbmap -query | awk '/layout/{print $2}')

if [ $currentLang = us ] 
then
	setxkbmap -layout ca fr
else
	setxkbmap -layout us
fi
