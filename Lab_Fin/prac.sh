#! /bin/bash

# echo "Hello World"
# echo $BASH_VERSION
# echo $HOME
# echo "Enter Name: "
# read name
# echo Hello $name

#in array

echo " put values in array "
read -a arr
len =${#arr[@]}
echo "${arr[@]}"
