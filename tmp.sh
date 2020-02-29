#!/bin/bash

tmp(){
	var=`find -name "*~"`
	echo -e "les fichiers qui sont supprimer\n"
	for i in $var
	do
		
		echo -e "$i\n"
	done
	for i in $var
	do
		if [ -f "$i" ];then
		rm $i
		fi
 	done
}
tmp
