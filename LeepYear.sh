#!/bin/bash -X

read -p "enter a year: " year

if(( $year%400==0 ))
then
   echo "Leep year"
elif (( $year%100==0 ))
then
    echo "not a leep year"
elif (( $year%4==0 ))
then
    echo "Leep year"
else
    echo "not a leep year"
fi
