#! /bin/bash

function sort()
{
        arr=("$@")
        n=${#arr[@]}
        for ((i = 0; i<n; i++))
        do
                for((j = 0; j<n-i-1; j++))
                do
                        if [ ${arr[j]} -lt ${arr[$((j+1))]} ]
                        then
                                temp=${arr[j]}
                                arr[$j]=${arr[$((j+1))]}
                                arr[$((j+1))]=$temp
                        fi
                done
        done
        echo "Array in descending order is:"${arr[@]}
}

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

counter=0
for index in ${!operations[@]}
do
	array[((counter++))]=${operations[$index]}
done

sort ${array[@]}
