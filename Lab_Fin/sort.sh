#! /bin/bash
echo enter array value
read -a arr
len=${#arr[@]}
# echo $len
# for((i=0;i<$len;i++))
# do
#     # a=$(($i+1))    
#     for((j=0;j<len-i-1;j++))
#     do
#         echo arri ${arr[i]} arrj ${arr[j]}
#         if [[ ${arr[j]} -gt ${arr[$((j+1))]} ]]
#         then      
#             temp=$arr[$i]
#             arr[$i]=${arr[$j]}
#             arr[$j]=$temp
#             echo hello
#          fi
#     done
# done
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
echo ${arr[@]}