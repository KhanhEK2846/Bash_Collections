#!/bin/bash

rm ips.txt

if ["$1" == ""]
then
	echo "Missing Input"
	echo "Example: ipsweep.sh 192.168.4"
else
	for ip in `seq 1 254`
	do
		ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" >> ips.txt &
		
	done
fi
