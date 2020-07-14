#! /bin/bash

isPresent=1
check=$(( RANDOM%2 ))
if [ $isPresent -eq $check ]
then
	rate=20
	hrs=8
	sal=$(($hrs*$rate))
else
	sal=0
fi
echo "Salary is: "$sal

