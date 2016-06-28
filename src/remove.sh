#!/bin/bash

	for var in $@
	do
		trash=~/trash/"`date +"%d_%m_%Y"`"
		if [ -e "$trash" ]
		then
			mv -f $var "$trash"
		else
			echo "Directory created : " $trash
			mkdir -p "$trash"
			mv -f "$var" "$trash"
		fi	
		echo $var "Moved to" $trash
	done
	#while [ $x -ne $# ]
	#do
	#	echo $x
	#	x=$(($x+1))
	#done
