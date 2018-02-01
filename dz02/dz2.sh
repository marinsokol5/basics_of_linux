echo --------------------------------------------------------
echo 1ZAD
echo 0036494914 > personal_info.dat
cat >> personal_info.dat << EOF
Marin Sokol
EOF
echo okosl | tee -a personal_info.dat

echo --------------------------------------------------------
echo 2ZAD
sort -t : -k 1 -g korisnici.dat > korisnici.sortirano.dat 
cut -d : -f 2 korisnici.dat | sort -f | uniq -u -i > jedinstveni_korisnici.dat
cut -d : -f 2 korisnici.dat | sort -f | uniq -d -i > nejedinstveni_korisnici.dat

echo --------------------------------------------------------
echo 3ZAD
grep -c  ping /usr/share/dict/words
grep you /usr/share/dict/words > yous.dat
wc -l yous.dat
cat yous.dat | tee --append yous.dat 

echo --------------------------------------------------------
echo 4ZAD
find -name jedinstveni_korisnici.dat
sudo updatedb
locate bla.dat 

echo --------------------------------------------------------
echo 5ZAD
ls -lh ~ | grep 'Kol'
ls -lh ~ | grep 'Kol' | sort -k 7 -g
ls -lh ~ | grep 'Kol' | sort -k 7 -g > /tmp/sortiran_home.txt
test -f /tmp/sortiran_home.txt && echo Found










