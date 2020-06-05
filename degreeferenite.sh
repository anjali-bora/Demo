#!/bin/bash -x

echo "1. cel. temprature into far."
echo "2. far. temprature into cel."

echo -n "select choice (1 or 2) :"
read choice

tf=0
tc=0

function temp()
{
   if [ $choice -eq 1 ]
   then
    echo -n "give temperature (c) :"
    read tc
    tf=$((($tc*9/5)+32))
     echo $tf "f"

       elif [ $choice -eq 2 ]
       then
         echo -n "give temperature (f) : "
          read tf
          tc=$((($tf-32)*5/9))
           echo $tc "c"

              else
                 echo "select 1 or 2 only"
                   exit 1
        fi
}
temp
