  GNU nano 4.9.2                                                                                               PrimeNumberInRange.sh
echo number1 :
read number1

echo number2 :
read number2


for (( i=number1; i<=number2; i++ ))
do
flag=0
        for (( j=2; j<i; j++ ))
        do
                if [ $(($i%$j)) -eq 0 ]
                then
                flag=1
                fi
        done
                if [ $flag -eq 0 ]
                then
                echo "prime numbers are : $i"
                fi
done
