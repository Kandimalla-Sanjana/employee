#! /bin/bash

isPartTime=1
isFullTime=2
maxhrs=100
rate=20
days=20

totalhrs=0
totaldays=0;

while [[ $totalhrs -lt $maxhrs && $totaldays -lt $days ]]
do
        (( totaldays++ ))
	check=$(( RANDOM%3 ))
        case $check in
                $isFullTime) hrs=8 ;;
                $isPartTime) hrs=4 ;;
                *) hrs=0 ;;
        esac
	totalhrs=$(( $totalhrs+$hrs ))
done
totalsal=$(( $totalhrs*$rate ))
echo "Salary is: "$totalsal
