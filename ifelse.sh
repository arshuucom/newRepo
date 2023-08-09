#! /bin/bash

number=5
if [ $number -eq 5 ]; then
    echo "number is 5"
else
fi

-----Done----
String Compare
#! /bin/bash

file_path="/dev/sda"

if [[ -b  "${file_path}" ]]; then
    echo "${file_path} is a block"
fi

#! /bin/bash

read -p "please enter a number" number
initNumber=1
while [[ ${initNumber} - le 10]]
do
    echo $((initNumber*number))
    ((initNumber++))
done


#! /bin/bash

if [[ $UID ==0 ]]; then
    echo "user is root"
else
    echo "user is not root"
fi