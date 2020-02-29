#!/bin/bash




main(){

PRIVATE=$(zenity --password --username)
if [ "$?" = 0 ];then
option=$(zenity --width=500 --height=500 --list --title="miniprojet shell" --text "<span color=\"blue\" font=\"30\">Bonjour MR `echo $PRIVATE | cut -d'|' -f1` </span>" --column MENU  "Search File" "Edit File" "Delete File"  "Calculate Percentage" "Save Percentage" "Help" )
			if [ $? != 0 ];then
			main
			fi
	case $option in
		"Search File")
			source search.sh
			extension=`zenity --width=500 --height=500 --entry --text "donner extension"`
			if [ $? = 0 ];then
			search $extension |zenity --width=500 --height=500 --list --column "Fichier" --separator=" " --multiple
				if [ $? != 0 ];then
				main
				fi
			else
			main
			fi 
			;;
		"Edit File")
			source week.sh |zenity --width=500 --height=500 --list --column "Fichier modifiéa depuis une semaine:" --separator=" " --multiple
			if [ $? != 0 ];then
			main
			fi
			;;
		"Calculate Percentage")
			source per.sh |zenity --width=500 --height=500 --list --column "pourcentage des fichierqui finissent par ~:" --separator=" " --multiple
			if [ $? != 0 ];then
			main
			fi	
			;;
		"Delete File")
			source tmp.sh |zenity --width=500 --height=500 --list --column "les fichier quisont supprimer:" --separator=" " --multiple 
			if [ $? != 0 ];then
			main
			fi	
			;;
		"Save Percentage")
			source sauvgarder.sh |zenity --width=500 --height=500 --list --column "save pourcentage" --separator=" " --multiple 
			if [ $? != 0 ];then
			main
			fi	
			;;
		"Help")

			source help.sh | zenity --width=860 --height=900 --list --column "Fichier" --separator=" " --multiple
			#zenity --info --title "help" --text "`helps.sh`"
				
			;;
		*)
			echo -e "Error rien a etait entrer\n"
			;;
	

	esac
else
zenity --error --text="Entrer login et mot de passe"
fi
}

main  
