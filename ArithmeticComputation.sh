#! /bin/bash

read -p "Enter the first number: " a
read -p "Enter the second number: " b
read -p "Enter the third number: " c

result_one=$(( a+b*c ))
result_two=$(( a*b+c ))
result_three=`echo $a $b $c | awk '{print $3+($1/$2)}'`
result_four=`echo $a $b $c | awk '{print ($1%$2)+$3}'`

declare -A operations
operations["a+b*c"]=$result_one
operations["a*b+c"]=$result_two
operations["c+a/b"]=$result_three
operations["a%b+c"]=$result_four

for index in ${!operations[@]}
do
	echo $index" : "${operations[$index]}
done
