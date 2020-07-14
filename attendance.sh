#! /bin/bash

isPartTime=1
isFullTime=2
totalSalary=0
rate=20
days=20
for (( day=1; day<=$days; day++ ))
do
	check=$(( RANDOM%3 ))
	case $check in
        	$isFullTime) hrs=8 ;;
	        $isPartTime) hrs=4 ;;
        	*) hrs=0 ;;
	esac

	sal=$(( $hrs*$rate ));
	totalsal=$(( $totalsal+$sal ))
done
echo "Salary of employee in a month is: " $totalsal
