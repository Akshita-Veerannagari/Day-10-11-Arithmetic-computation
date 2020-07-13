#! /bin/bash

read -p "Enter the first number: " a
read -p "Enter the second number: " b
read -p "Enter the third number: " c

result_one=$(( a+b*c ))
echo "The result of a+b*c is $result_one"

