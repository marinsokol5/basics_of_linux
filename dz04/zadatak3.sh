#!/bin/bash
cd /root/
sudo cd /root/
echo "cd is not a programme but a build in so I cannot so to speak start the programme as sudo"
echo "option 1 is using sudo -i to log in as user and then being able to place myseld in cd /root/ becouse I am root"
echo "option 2 is giving myself (with sudo) permission to enter the directory"

echo "I am giving only the directories the executable mode which allows me to list and read directories inside "
sudo chmod -R +X /root/

echo "Now this works"
cd /root/

ls
echo "Denied"
echo "I am now going to give everyone all permissions"
sudo chmod -R a=rwx /root/
ls
echo "Works"


