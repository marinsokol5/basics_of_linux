# 1 zad
cat ~/.bash_logout

# 2 zad
ls ~ -S -r

# 3 zad
mkdir -p /tmp/"OKOSL tjedan"/{ponedjeljak,utorak,srijeda,cetvrtak,petak,.subota}/
# a
pwd
# b
touch /tmp/OKOSL\ tjedan/.subota/{predavanja,labosi,zadaca{1..8}}
# c
ls -a -R /tmp/OKOSL\ tjedan/

# 4 zad
ln -s /var/ Varionica
du -hs -B GB Varionica/
rm Varionica

# 5 zad
df -B GB --output='avail' -h /

# 6 zad
#a
wget -r --no-parent -nH -nc --cut-dirs=1 http://ankh.morpork.site/okosl/ -P ~/okosl1
#b
for file in ~/okosl1/*; do
	file "$file"
done
#c
cp -r ~/okosl1/ /tmp/ponedjeljak
#d
rm -rf ~/okosl1/

# 7 zad
tail -f /var/log/syslog



