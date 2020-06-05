echo -n "enter the number : "
read n

num=2

function myfunc() {
for (( i=1; i<=$n; ++i ))
do
if [ $i -le $n ]
then
 result=$(( $num**$i ))
 echo $num^$i=$result
else
   echo "loop ended"
fi
done
}
myfunc
