#!/bin/bash


sauvgarder(){
	#y=`date +%D`
	#cp pourcentage~.txt tmp.txt
	#date source per.sh > pourcentage~.txt
	#cat tmp.txt >> pourcentage~.txt
	#rm tmp.txt
	y=`date +%D`
	
	sed -i "1i $y `source per.sh`" pourcentage~.txt	
}
sauvgarder
