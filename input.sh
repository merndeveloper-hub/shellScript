#!/bin/bash

read -p "your name is " name
read -p "your age is " age
read -p "your password is " -s password

echo "My name is ${name},age is ${age} and password is ${password}."