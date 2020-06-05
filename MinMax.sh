#!/bin/bash -x

count=0
max=5
while (( $count < $max ))
do
        number[$count]=$(( RANDOM%899 +100 ))
        ((count++))
done
echo ${number[@]}
echo ${#number[@]}

minimum=${number[0]}
maximum=${number[0]}

for integer in ${number[@]}
do
        if (( $integer > $maximum ))
        then
          maximum=$integer
        fi

        if (( $integer < $minimum ))
        then
          minimum=$integer
        fi
done

echo maximum=$maximum
echo minimum=$minimum
