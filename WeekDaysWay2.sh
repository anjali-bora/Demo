echo -n "enter number : "
read n

function myweek() {

len=$(echo $n | wc -c)
len=$(( $len - 1 ))

for (( i=1; i<=$len; i++ ))
do
        if (( $n==1 ))
        then
        echo "MONDAY"

        elif (( $n==2 ))
        then
        echo "TUESDAY"

        elif (( $n==3 ))
        then
        echo "WEDNESSDAY"

        elif (( $n==4 ))
        then
        echo "THURSDAY"

        elif (( $n==5 ))
        then
        echo "FRIDAY"

        elif (( $n==6 ))
        then
        echo "SATURDAY"

        elif (( $n==7 ))
        then
        echo "SUNDAY"

        else
        echo "NOT A WEEK DAY"

        fi
done
}
myweek

