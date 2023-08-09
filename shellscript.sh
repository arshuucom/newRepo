#! /bin/bash

count=$(df -h | wc -l)
a=0
for (( c=1; c<=$count; c++ ))
do
    col=$(df -h | awk '{print $5}' | sed -n "$c"p | sed 's/%//')
    if [[ "$col" -gt "30" ]]; then
        a=$(($a+1))
        echo "Count of Numbers which is Greater than 30 = $a"
    else
        echo "print"
    fi
done

----------Done 1 -----

#! /bin/bash

count=$(df -h | wc -l)
a=0
for (( c=1; c<=$count; c++ ))
do
    col=$(df -h | awk '{print $5}' | sed -n "$c"p | sed 's/%//')
    if [[ "$col" -gt "30" ]]; then
        echo "This number is above than 30 = $col"
    fi
done


--------Done 2 -------

#! /bin/bash

FILE="/root/shellScriting/source/a.txt"

    if [[ -e "/root/shellScriting/source/a.txt" ]]; then
        rm -f "/root/shellScriting/source/a.txt"
    fi

-----Done 3 ------

#! /bin/bash

useradd admin1
useradd worker1
useradd worker2

echo "worker1 ALL=(worker2) NOPASSWD:ALL" | sudo tee -a /etc/sudoers


-----Done 4---------

---
 - hosts: Password
   gather_facts: no
   become: yes
   tasks:
   - name: Shell script
     shell: |
      # FILE="/root/numberLooping"
      File="/root/numberLooping/test.txt"
      if [[ -f "${File}" ]]; then
        echo "$File" | sed 's/ //g'
      fi
...

----- Done 5 --------

---
 - hosts: Password
   gather_facts: no
   become: yes
   tasks:
   - name: Shell script
     shell: |
      File="/root/numberLooping/test.txt"
      if [[ -f "${File}" ]]; then
          sed -i "s/ //g" "${File}"
      fi
...
 
-------Done 6 --------

---
 - hosts: Password
   gather_facts: no
   become: yes
   tasks:
   - name: Shell script
     shell: |
      File="/root/numberLooping/docker.txt"
      if [[ -f "${File}" ]]; then
          awk 'NR==2 || {gsub(/[[:space:]]/,"");} 1' "${File}"
      fi
...


----Done 7 --------

To remove space from file

---
 - hosts: Password
   gather_facts: no
   become: yes
   tasks:
   - name: Shell script
     shell: |
      File="/root/numberLooping/docker.txt"
      if [[ -f "${File}" ]]; then
        sed -i '3n; 3,5 s/[[:space:]]//g' "${File}"
      fi
...

----Done 8 ------

name=$(grep -w administrator passwd)
echo $name >> test.txt

-----Done 9 -------

To add space Letter
---
 - hosts: Password
   gather_facts: no
   become: yes
   tasks:
   - name: Shell script
     shell: |
      File="/root/numberLooping/docker.txt"
      if [[ -f "${File}" ]]; then
        sed 's/[A-Z]/ &/g;s/^ //' "${File}"
      fi
...


-----Done 10------

#! /bin/bash


Directory="/root/shellScripting/arshad"

if [[ -e "${Directory}" ]]; then
  echo "Directory already present"
else
  mkdir arshad
fi

-----Done 11 Ravikant Task -----

#!/bin/bash
names=(first second third)
for name in "${names[@]}"
do
    touch "$name"
    man date > /root/shellScript/$name.txt
done







# #! /bin/bash

# count=$(df -h | wc -l)
# a=0
# for (( c=1; c<=$count; c++ ))
# do
#     col=$(df -h | awk '{print $5}' | sed 's/%//')
#     if [[ "$col" -gt "30" ]]; then
#         echo "print $a"
#     fi
# done


# a=0
# count=$(df -h | wc -l)
# column=$(df -h | awk '{print $5}')

# if [[ "$column" -gt "30" ]]; then
#     a=$(($a+1))
# fi
# done
# echo "show number = $a"

