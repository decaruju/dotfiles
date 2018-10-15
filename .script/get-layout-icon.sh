#!/bin/bash

currentLang=$(setxkbmap -query | awk '/layout/{print $2}')

if [ $currentLang = us ] 
then
	echo 🇺🇸
else
	echo 🇨🇦
fi
