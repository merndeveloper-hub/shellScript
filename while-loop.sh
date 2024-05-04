#!/bin/bash

# bash -x filename ==> debug mode file run

read -p "please enter your" number
initNumber=1

while [[ ${initNumber} -le 10 ]]
do
  echo $((initNumber*number))
  ((initNumber++))
done  