#!/bin/bash
touch "$(whoami)"

file=$(whoami)
echo -n "USER: " > $file 
sudo cat /etc/passwd | grep "$file" | cut -d ':' -f1 >> $file

echo -n "HOME DIR: " >> $file 
sudo cat /etc/passwd | grep "$file" | cut -d ':' -f6 >> $file

echo -n "SHELL: " >> $file 
sudo cat /etc/passwd | grep "$file" | cut -d ':' -f7 >> $file

echo -n "GROUPS: " >> $file 
groups $file | cut -d " " -f4- >> $file

echo -n "PRIMARY GROUP: " >> $file 
groups $file | cut -d " " -f3 >> $file

cat $file

rm $file
