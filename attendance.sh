#! /bin/bash
isPartTime=1
isFullTime=2
ratePerHr=20
check=$(( RANDOM%3 ))
if [ $isFullTime -eq $check ]
then
	hrs=8
elif [ $isPartTime -eq $check ]
then
	hrs=4
else
	hrs=0
fi
sal=$(( $hrs*$rate ))
echo "Salary of the employee is: $sal"
