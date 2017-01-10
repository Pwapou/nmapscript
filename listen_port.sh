#!/bin/bash
echo " welcome "
echo " this script can give the alive host on your network range"
echo ""
echo ""
read -ep "gimme your range ip (like this 192.168.0-255) : " ip
echo $ip
read -ep "gimme your port : " port
echo $port
nmap -oG - $ip -p $port -vv >~/scan
cat scan | grep Up | awk -F " " '{print $2}' > result
cat result
