#! /bin/bash
echo enter burst Time For FCFS
while read line
do
    arr=("${arr[@]}" $line)
done
 
tw=0

for ((i=1;i<${#arr[@]}-1;i++))
do
arr[$i]=$((${arr[$((i-1))]}+${arr[$i]}))

done

for ((i=0;i<${#arr[@]}-1;i++))
do
tw=$(($tw+${arr[$i]}))
done

awtf=$(bc -l <<< "scale=4;$tw/${#arr[@]}")

echo $awtf

