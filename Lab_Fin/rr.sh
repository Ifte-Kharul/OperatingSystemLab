#! /bin/bash

echo Enter Burst Time:
read -a btime
read -p "Enter time quantam : " t
sum=0
for i in ${btime[@]}
do 
# sum=`expr $sum + $i`
sum=$(($sum+$i))
done
#rr
i=0
count=0
len=${#btime[@]}
while(($sum!=0))
do
if(($i==$len-1))
then
i=0
fi

# sum=$(($sum-$t))


done