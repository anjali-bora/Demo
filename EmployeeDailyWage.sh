#!bin/bash -x
wageperday=0
for i in 'seq 2'
do
        attendance=$(( $RANDOM%2 ));
        if [ $attendance == 1 ];
          then
            wageperhour=20;
            echo "present"
        else
            hour=0;
            echo "absent"
        fi
          wageperday=$(( 8 * $wageperhour ));
done
echo $wageperday



