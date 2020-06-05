n "Enter number : "
read n

function myweek() {

len=$(echo $n | wc -c)
len=$(( $len - 1 ))

for (( i=1; i<=$len; i++ ))
do
    case $n in
        1) echo -n "monday " ;;
        2) echo -n "tuesday " ;;
        3) echo -n "wednessday " ;;
        4) echo -n "thursday " ;;
        5) echo -n "friday " ;;
        6) echo -n "saturday " ;;
        7) echo -n "sunday ";;
        *) echo -n "not a week day";;
    esac
done
}
myweek
echo ""
