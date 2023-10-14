#! /bin/bash

echo "Hello World"
#2
a=10
b=20
echo a=$a and b=$b
#3
echo $((a+b))
#4
c=$((a+b))
echo c=$c
#5
d=$((c*c))
echo d=$d
#6
a=10.11
b=10.11
c=$a+$b
echo $c|bc
#7
echo "scale=5;11.211/3"|bc
#8
echo "2^5"|bc
#9
echo "scale=4;sqrt(13)"|bc
#10 input from a user
#read -p "Enter a:" a
#read -p "Enter b:" b
#echo a=$a and b=$b
echo $0 $1 $2 $3
args=("$@")
echo $@
echo $#
echo ${args[0]} ${args[1]} ${args[2]}
a=10
b=13
if [ $a -gt $b ]
	then
	echo $a is greater than $b
	else
	echo $a is smaller than $b
fi

