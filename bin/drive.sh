#!/bin/bash
if [[ "$1" == "" ]]; then
	mount | grep sdb | cut -d " " -f "1 2 3"
fi
if [[ "$1" == "0" ]]; then
	sudo umount /dev/sdb6
	sudo umount /dev/sdb5
fi
if [[ "$1" == "ws" ]]; then
	if [[ "$2" == "0" ]]; then 
		sync
		umount /dev/sdb6
	else
		sudo mount /dev/sdb6 
	fi
fi
if [[ "$1" == "data" ]]; then
	if [[ "$2" == "0" ]]; then 
		sync
		sudo umount /dev/sdb5
	else
 		sudo mount /dev/sdb5 
	fi

fi
