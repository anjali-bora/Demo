#!/bin/bash -x
isfulltime=1;
isparttime=2;
maxhoursinmonth=100;
permonthday=20
emprateperhour=20

totalemphr=0
totalworkingdays=0

function GetWorkHours()
{
  case $Emptype in

        $isfulltime) wage=8
        ;;
        $isparttime) wage=4
        ;;
        *) wage=0
        ;;
  esac
  echo $wage
}

while [[ $totalemphr -lt $maxhoursinmonth && $totalworkingdays -lt $permonthday ]]
do
  ((totalworkingdays++))

  Emptype=$(( $RANDOM%3 ))
  wage="$(GetWorkHours $Emptype)"
  totalemphr=$(( $totalemphr + $wage ))
done

totalsalary=$(($totalemphr*$emprateperhour))

echo "total salary:-" $totalsalary
