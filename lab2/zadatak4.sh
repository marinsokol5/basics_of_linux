#!/bin/bash
echo "1. tocka"
echo "-----------------------------------------------------------------------------"
egrep -rI "def " ~/fino/fino --include=\*.py | sed 's/\(.*\)\(def \)\(.*\)\((.*\)/\3/' | less
clear
read -p a

echo "2. tocka"
echo "-----------------------------------------------------------------------------"
egrep -rI "#include" ~/fino/fino --include=\*.c | sed 's/.*\(#include\)\(.*\)/\2/' | less
clear
read -p a


echo "3. tocka"
echo "-----------------------------------------------------------------------------"
egrep -nrI "*include*" / | sed 's/\(.*\)\(:\)\([[:digit:]]*\)\(:\)\(.*\)/\3/'| less




