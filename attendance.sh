#! /bin/bash

isPresent=1
check=$(( RANDOM%2 ))
if [ $isPresent -eq $check ]
then
	echo "Employee is present"
else
	echo "Employee is absent"
fi

