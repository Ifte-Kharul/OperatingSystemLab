#! /bin/bash
echo enter value For Shortest Job First
while read line
do
    arr=("${arr[@]}" $line)
done
len=${#arr[@]}
for ((i = 0; i<$len; i++))
do
    
    for((j = 0; j<len-i-1; j++))
    do
    
        if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
        then
            # swap
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}  
            arr[$((j+1))]=$temp
        fi
    done
done
for ((i=1;i<${#arr[@]}-1;i++))
do
arr[$i]=$((${arr[$((i-1))]}+${arr[$i]}))

done
tw=0
for ((i=0;i<${#arr[@]}-1;i++))
do
tw=$(($tw+${arr[$i]}))
done

#awt=$(($tw/$((${#arr[a]}+1))))
awtf=$(bc -l <<< "scale=4;$tw/${#arr[@]}")
echo Average Waiting_time For Shortest Job First is  $awtf

