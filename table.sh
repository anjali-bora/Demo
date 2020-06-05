echo -n "enter the number : "
read n

num=2
i=1

function myfunc() {
while [ $i -le $n ] && [ $i -le 8 ]
do
if [ $i -le $n ];
 then
  result=$(( $num**$i ))
  echo $num^$i=$result
   i=$(( ++i ));

else
  echo"not a valid number"

fi
done
}
myfunc
