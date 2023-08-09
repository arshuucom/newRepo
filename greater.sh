
#! /bin/bash

number=$(cat passwd | wc -l)
a=0
b=0

for (( c=1; c<=$number; c++ ))
do
    count=$(cat passwd | sed -n "$c"p | cut -d ":" -f4)
    if [[ "$count" -gt "1000" ]]; then
       a=$(($a+1))
    else
        b=$(($b+1))
    fi
done
echo "Count of Numbers which is Greater than 1000 = $a"
echo "Count of Numbers which is Smaller than 1000 = $b"


