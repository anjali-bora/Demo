#!bin/bash -x
wage=0
for i in 'seq 2'
do
        attendance=$(( $RANDOM%2 ));
        if [ $attendance == 1 ];
          then
            hour=500;
            echo "present"
        else
            hour=0;
            echo "absent"
        fi
          wage=$(( 8*$hour ));
done
echo $wage
