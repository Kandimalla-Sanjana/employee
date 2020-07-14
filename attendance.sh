#! /bin/bash

isPartTime=1
isFullTime=2
maxhrs=100
rate=20
days=20

totalhrs=0
totaldays=0;

function getHours()
{
	case $1 in
                $isFullTime) hrs=8 ;;
                $isPartTime) hrs=4 ;;
                *) hrs=0 ;;
        esac
	echo $hrs
}


while [[ $totalhrs -lt $maxhrs && $totaldays -lt $days ]]
do
        (( totaldays++ ))
	check=$(( RANDOM%3 ))
        workHours=`getHours $check`
      	totalhrs=$(( $totalhrs+$workHours ))
done
totalsal=$(( $totalhrs*$rate ))
echo "Salary is: " $totalsal

