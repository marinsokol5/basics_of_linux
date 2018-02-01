#!/bin/bash
printf "okosl\nokosl\n\n\n\n\n\nY" | sudo adduser okosl 

sudo addgroup linux
sudo adduser okosl linux

sudo cp -r /etc /tmp/tmp_etc
cd /tmp/tmp_etc/etc/

sudo chgrp -R linux ./*.conf
sudo chmod -R  g+rw ./*.conf

sudo chown -R okosl .
sudo chmod -R +t .

sudo chown -R :linux .
sudo chmod -R g=-rw,o=-rw .

sudo passwd -l okosl
