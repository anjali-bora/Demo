#!/bin/bash -x
isfulltime=1;
isparttime=2;
perhoursalary=20;
employeetype=$(( $RANDOM%3 ))
case $employeetype in
        $isfulltime) wage=8
        ;;
        $isparttime) wage=4
        ;;
        *) wage=0
        ;;
esac
salary=$(( $wage * $perhoursalary ));
echo $salary

