#!/bin/bash -x

Gmoney=100
bet=0
win=0

while [[ $Gmoney -ne 0 && $Gmoney -ne 200 ]]
do
        let bet++
        result=$(( RANDOM%2 ))
        if [ $result -eq 1 ]
        then
                let win++
                Gmoney=$(($Gmoney+1))
        else
                Gmoney=$(($Gmoney-1))
        fi
done
echo "no.of bets are : $bet"
echo "no.of wins are : $win"
