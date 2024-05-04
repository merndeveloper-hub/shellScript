#!/bin/bash
name="owaisyameen"
firstname="owaisyameen"

if [[ -n $name ]]
then  
    echo "length of string is non zero"
fi    

if [[ -z $name ]]
then  
    echo "length of string is zero"
fi    

if [[ $name != $firstname ]]
then 
    echo "string are equal"
fi    

if [[ $name == $firstname ]]
then 
    echo "string are equal"
fi    