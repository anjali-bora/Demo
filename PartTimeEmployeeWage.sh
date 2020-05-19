#!/bin/bash -x

fulltime=2
parttime=1
absent=0
rateperhour=20
randomcheck=$((RANDOM%3))

if [ $fulltime -eq $randomcheck ]
        then
             workhour=8

elif [ $parttime -eq $randomcheck ]
        then
             workhour=4

else
        workhour=0

fi
salary=$(( $workhour * $rateperhour ))
echo $salary
