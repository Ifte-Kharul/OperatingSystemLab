#! /bin/bash
echo For First Come First Serve Enter Burst Times:
read -a arr
len=${#arr[@]}
wt=0
twt=0
# echo $len
for((i=0;i< $len-1;i++))
do
    wt=$(($wt+${arr[$i]}))
    twt=$(($twt+$wt))
done
echo $(bc -l<<<"scale=3;$twt/$len")