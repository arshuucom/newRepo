
#! /bin/bash

cat passwd | sed -n 16p | cut -d ":" -f4 | awk '{print $4}' passwd
$number

awk '{print $2}' passwd
cat passwd | cut -d: -f4

var= cat passwd | cut -d: -f4
    echo ${var}


var=$(cat passwd | cut -d: -f4)
echo $var 
a=0

for ((var=0; var<1000; var++))
{
    a=$((a+var))
done
    echo $a
}

#! /bin/bash

useradd admin1
useradd worker1
useradd worker2

# echo "worker1 ALL=(ALL) NOPASSWD:ALL" | sudo tee -a /etc/sudoers

echo "worker1 ALL=(ALL) NOPASSWD:su - admin1" | sudo tee -a /etc/sudoers

# sed -i -e '$a\' file
# file_path="/etc/sudoers"

# if [[ -f  "${file_path}" ]]; then
#     echo "$file_path    worker1=(ALL:ALL) ALL" 
# fi

#! /bin/bash

fdisk/dev/sda



Variabe store in cloumn
loop and count
loop and check value is less than 1000 and make variable a and increment
greather than equal to then b ++

Create 2 users
admin1 & worker1

Assign sudo permission to worker1 , such that it is able to switch to admin1 user.

***Complete this using bash script

