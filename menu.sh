#!/bin/bash


menu(){
	clear
while [ "$choix" != "0" ]
do
	echo -e "--1-- Rechecher des fichier selon les criteres \n"
	echo -e "--2-- Calculer le pourcentage des fichiers qui se termine par ~\n"
	echo -e "--3-- Sauvgarder \n"
	echo -e "--4-- Version Graphique  \n"
	echo -e "--5-- Help\n"
	
	read -p "Donner votre choix : " choix
	case $choix in
		"1")
			while [ "$choix2" != "0" ]
			do
				echo -e "--1-- Par extension\n"
				echo -e "--2-- Modifier depuis une semaine\n"
				echo -e "--3-- Modifier avant une semaine\n"
				echo -e "--4-- Les fichier qui se termine par ~ et les supprimer\n"
				echo -e "--0-- Retour au menu principale\n"
				read -p "Donner votre choix : " choix2
					case $choix2 in
						"1")
							read -p "Donner l'extension a chercher" ext
							source search.sh $ext
							;;
						"2")
							source week.sh
							;;
						"3")
							source before_week.sh
							;;
						"4")
							source tmp.sh
							;;
						"0")
							menu
							;;
						*)
							echo -e "Rien a ete entrer\n"
							;;
					esac	
			done				
				
			;;
		"2")
			echo -e "le pourcentage des fichier qui fini par ~ est : \n"
			source per.sh
			;;
		"3")
			source sauvgarder.sh
			echo -e "le sauvgardage a ete bien effectue merci pour votre confiance \n"
			;;
		"4")
			source graphique.sh
			;;
		"5")
			clear
			source help.sh
			;;
		"0")
			echo -e "Bye,Bye\n"
			;;
		*)
			echo -e "Rien a ete entrer\n"
			;;
	esac
done
}
menu
