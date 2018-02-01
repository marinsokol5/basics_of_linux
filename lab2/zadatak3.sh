#!/bin/bash
echo "Priprema"
echo "-----------------------------------------------------------------------------"
cat > file.txt << EOF
Linux Mint 17.2
Ubuntu 15.10
Debian GNU/Linux 8.2
Mageia 5
Fedora 23
openSUSE Leap 42.1
Arch Linux
CentOS 7.2-1511
PCLinuxOS 2014.12
Slackware Linux 14.1
FreeBSD
EOF
read -p a
clear

echo "1. tocka"
echo "-----------------------------------------------------------------------------"
echo "prije"
cat file.txt
echo "-----------------------------------------------------------------------------"
echo "poslije"
sed -i '/^.*[0-9]+.*$/d' file.txt 
cat file.txt
read -p a
clear

echo "2. tocka"
echo "-----------------------------------------------------------------------------"
echo "prije"
cat file.txt
echo "-----------------------------------------------------------------------------"
echo "poslije"
sed -i -e 's/\([[:alpha:]].*\) \([[:digit:]].*\)/\2 \1/' file.txt  
cat file.txt
read -p a
clear

echo "3. tocka"
echo "-----------------------------------------------------------------------------"
echo "prije"
cat file.txt
echo "-----------------------------------------------------------------------------"
echo "poslije"
sed -i 's/\(.*\)/\L\1/' file.txt   
cat file.txt
read -p a
clear

echo "4. tocka"
echo "-----------------------------------------------------------------------------"
echo "prije"
cat file.txt
echo "-----------------------------------------------------------------------------"
echo "poslije"
sed  -i 's/\([aeiou]\)/\u\1/g' file.txt   
cat file.txt
read -p a
clear

echo "5. tocka"
echo "-----------------------------------------------------------------------------"
echo "prije"
cat file.txt
echo "-----------------------------------------------------------------------------"
echo "poslije"
sort -n file.txt  -o file.txt   
cat file.txt
read -p a
clear






