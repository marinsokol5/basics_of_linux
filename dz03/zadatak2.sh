#!/bin/bash
echo "1. tocka"
echo "-----------------------------------------------------------------------------"
egrep [0-9]+ /usr/share/dict/words

echo "2. tocka"
echo "-----------------------------------------------------------------------------"
egrep ^i.*[[:upper:]].+ /usr/share/dict/words

echo "3. tocka"
echo "-----------------------------------------------------------------------------"
egrep -v [aeiouAEIOU] /usr/share/dict/words


echo "4. tocka"
echo "-----------------------------------------------------------------------------"
egrep "[aeiouAEIOU]{2}" /usr/share/dict/words

echo "5. tocka"
echo "-----------------------------------------------------------------------------"
egrep -c ening$  /usr/share/dict/words

echo "6. tocka"
echo "-----------------------------------------------------------------------------"
egrep -c \'s$  /usr/share/dict/words

echo "7. tocka"
echo "-----------------------------------------------------------------------------"
egrep -c  [[:upper:]]$  /usr/share/dict/words




