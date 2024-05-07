#!/bin/bash
echo "updating repositories"
sudo apt update
echo "installing dependencies"
sudo apt install grub grub-common mtools xorriso wget curl git -y
sudo apt install grub2 grub2-common mtools xorriso wget curl git -y
sleep 2
echo "Downloading isomaker"
cd ~/
mkdir isomaker
cd isomaker
git clone https://github.com/HDD-DEV/isomaker
cd /usr/bin
sudo cp ~/isomaker/isomaker /usr/bin/
sudo chmod +x /usr/bin/isomaker
sleep 3
echo "YAY!Isomaker was installed with no errors"
sleep 2
exit
