#!/bin/bash

per(){

var=`ls`
var1=`find -name "*~"`
nt=0
n=0

	for i in $var
	do 
		if [ -f "$i" ];then
		let nt++
		fi
	done
	for i in $var1
	do
		if [ -f "$i" ];then
		let n++
		fi
	done
pourcentage=$(($n*100/$nt))
echo "$pourcentage%"
}
per
