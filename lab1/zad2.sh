#!/bin/bash
echo -n " Upisi godinu za koju te zanima koliko puta se dogodio petak 13.: "
read godina
petkovi=$(ncal $godina | grep  'Pe' | grep -c '13')
echo " U godini $godina , petak 13. se dogodio ${petkovi} puta . "

echo -n " Upisi godinu za do koje te zanima koliko puta ce se dogoditi petak 13.: "
read opseg
for tmpGodina in $(seq $godina $opseg)
do
petkovi=$(ncal $tmpGodina | grep  'Pe' | grep -c '13')
echo " U godini $tmpGodina , petak 13. se dogodio $petkovi puta . "
done
