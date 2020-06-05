echo -n number :
read number

factorial=1

for (( i=1; i<=number; i++ ))
do
        factorial=$((factorial * i))
        echo $factorial
done
