#! /bin/bash

read -p "Enter the first number: " a
read -p "Enter the second number: " b
read -p "Enter the third number: " c

result_one=$(( a+b*c ))
echo "The result of a+b*c is $result_one"
result_two=$(( a*b+c ))
echo "The result of a*b+c is $result_two"
result_three=`echo $a $b $c | awk '{print $3+($1/$2)}'`
echo "The result of c+a/b is $result_three"

