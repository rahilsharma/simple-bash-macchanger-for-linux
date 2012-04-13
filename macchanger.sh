#!/bin/bash --
#
#  MAC adress changer
# http://lihars.tk
#author:rahil sharma
#grep yahan HWaddr  ko search karta hai aur address deta hai 
#change interface and new mac accordingly


echo "enter interface";
read inter;
echo "Old mac adress: ";	
ifconfig -a | grep HWaddr | grep $inter;   
echo "\nenter new mac id"   
	read new_mac;
	sudo ifconfig $inter down
	sudo ifconfig $inter hw ether $new_mac
	sudo ifconfig $inter up
	echo "New mac adress: $new_mac"
#mac ko dekh ke daliyo
  

