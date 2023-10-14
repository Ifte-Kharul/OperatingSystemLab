#! /bin/bash

#priority scheduling

echo Enter Brurst Time For Processes:
read -a btime
echo Enter Priority:
read -a pri
len=${#btime[@]}
#sort on priority
for ((i = 0; i<$len; i++))
do
    
    for((j = 0; j<len-i-1; j++))
    do
    
        if [ ${pri[j]} -gt ${pri[$((j+1))]} ]
        then
            # swap
            temp=${pri[j]}
            pri[$j]=${pri[$((j+1))]}  
            pri[$((j+1))]=$temp
            temp1=${btime[j]}
            btime[$j]=${btime[$((j+1))]}  
            btime[$((j+1))]=$temp1
        fi
    done
done
wt=0
twt=0
for((i=0;i< $len-1;i++))
do
    wt=$(($wt+${btime[$i]}))
    twt=$(($twt+$wt))
done
echo $(bc -l<<<"scale=3;$twt/$len")