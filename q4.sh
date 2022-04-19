#!/bin/bash
read num
num=$(echo $num | tr "," " ") 
declare -a ans
ans=($(echo $num ))
n=${#ans[@]}

for ((i = 0; i<n; i++))
do
    
    for((j = 0; j<n-i-1; j++))
    do
    
        if [ ${ans[j]} -gt ${ans[$((j+1))]} ]
        then
            temp=${ans[j]}
            ans[$j]=${ans[$((j+1))]}  
            ans[$((j+1))]=$temp
        fi
    done
done

echo ${ans[*]}

