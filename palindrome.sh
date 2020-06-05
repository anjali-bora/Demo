                                                                                                   palindrome.sh
#!/bin/bash -x

echo number :
read number

reversenumber=0
reminder=0
originalnumber=0
originalnumber=$number

function myvalue() {
        while [ $number -ne 0 ]
                do
                reminder=$(( $number%10 ))
                number=$(( $number/10 ))
                reversenumber=$(((reversenumber*10)+reminder))
                done

                if [ $originalnumber -eq $reversenumber ]
                then
                        echo "number is a palindrome number"

                else
                        echo "number is not a palindrome number"
                fi
}
myvalue
