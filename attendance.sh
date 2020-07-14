#! /bin/bash

isPartTime=1
isFullTime=2
rate=20
check=$(( RANDOM%3 ))
case $check in
	$isFullTime) hrs=8 ;;
	$isPartTime) hrs=4 ;;
	*) hrs=0 ;;
esac

sal=$(( $hrs*$rate ));
echo "Salary of employee: " $sal
