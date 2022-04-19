#!/bin/bash
read string
len=${#string}
length=$(((len/2)+1))

for ((i=($len); i>=0; i--))
	do
	    reverse="$reverse${string:$i:1}"
	done

echo $reverse

ans=$(echo "$reverse" | tr "0-9a-z" "1-9a-z")
echo $ans


length=$(((len/2)+1))

for ((i=($len/2)-1; i>=0; i--))
	do
	    halfrev="$halfrev${string:$i:1}"
	done
for ((i=($len/2); i<len+1; i++))
	do
	    halfrev="$halfrev${string:$i:1}"
	done
echo $halfrev
