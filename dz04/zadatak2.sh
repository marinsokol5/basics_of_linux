#!/bin/bash

sudo useradd weakling
sudo passwd weakling
echo "Signing in: su - weakling"
echo "problem is in the fact that we didn't define his permissions in /etc/sudoers"

echo "Loging out: logout"
echo "using sudo visudo I can create him as a user and give him ALL in permissions, then sudo apt install works becouse he can ran it as root"

sudo userdel -r weakling

