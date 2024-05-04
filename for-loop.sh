#!/bin/bash

read -p "please enter a number" number

# for variableName in item1 item2 item3 item4
#do
#   echo "${variableName}"

#done

#for variableName in {1..10}
#do
#  echo ${variableName*number}
#done

#for i in *
#do
# echo $i
#done

for i in $(ls *.txt)
do
 echo $i
done