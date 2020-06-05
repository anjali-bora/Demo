function my_number() {
        sum=0
        result1=$(( 1 + RANDOM % 6 ))
        result2=$(( 1 + RANDOM % 6 ))
        echo "num1 :" $result1 " " "num2 :" $result2
        sum=$(( $result1 + $result2 ))
        echo "sum :" $sum
}
my_number

