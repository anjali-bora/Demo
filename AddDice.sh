#!bin/bash -x

function my_dice() {
        sum=0
        for (( count=1; count<=5; count++ ))
        do
                result=$(( RANDOM % 90 ))
                        if [ $result -gt 10 ]
                        then
                        sum=$(( $sum+$result ))
                        fi
                        echo $result
        done
average=$(($sum/5))
echo "sum: " $sum " " "average: " $average
}
my_dice
