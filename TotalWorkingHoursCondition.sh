#!/bin/bash -x
isfulltime=1;
isparttime=2;
maxhoursinmonth=100;
permonthday=20
emprateperhour=20
totalemphr=0
totalworkingdays=0

while [[ $totalemphr -lt $maxhoursinmonth && $totalworkingdays -lt $permonthday ]]
do
  ((totalworkingdays++))

  employeetype=$(( $RANDOM%3 ))
  case $employeetype in
        $isfulltime) wage=8
        ;;
        $isparttime) wage=4
        ;;
        *) wage=0
        ;;
  esac
  totalemphr=$(( $totalemphr + $wage ))
done

totalsalary=$(($totalemphr*$emprateperhour))

echo $totalsalary
