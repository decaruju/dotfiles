#!/bin/sh

duetoday=$(grep -c "due:$(date -I)" ~/todo.txt)
dueweek=0
weekday=0

while [ "$weekday" -le 7 ]; do
    dueweek=$((dueweek + $(grep -c "due:$(date -I --date="$weekday day")" ~/todo.txt)))
    weekday=$(( weekday + 1 ))
done

echo "$duetoday⏰$dueweek"
