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
counter=0
while [[ $totalhrs -lt $maxhrs && $totaldays -lt $days ]]
do
        (( totaldays++ ))
	check=$(( RANDOM%3 ))
        workHours=`getHours $check`
	wage=$(($workHours*$rate))
        dailywage[((counter++))]=$wage
        totalhrs=$(( $totalhrs+$workHours ))
done
totalsal=$(( $totalhrs*$rate ))
echo "Daily wage array is: "${dailywage[@]}
echo "Salary is: " $totalsal

