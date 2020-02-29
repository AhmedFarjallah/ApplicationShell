]#!/bin/bash

helps(){
	echo -e "DESCRIPTION:"
	echo -e "       Notre application facilite a l'utilisateur la gestion des données 
Chercher n importe quel type de fichier 
Avoir une liste des fichiers crées depuis ou avant une semaine
Sauvgarde des fichiers de types specials\n \n"
	echo -e " -search:"
	echo "          chercher les fichiers dont l'extension est mis en argument"
	echo -e " -week:"
	echo -e "       chercher touts les fichiers modifiés depuis une semaine"
	echo -e " -before-week:"
	echo -e "       chercher touts les fichiers modifiés avant une semaine"
	echo -e "-tmp:"
	echo -e "       chercher touts les fichiers qui finissent par ~et les supprimer"
	echo -e "-per:"
	echo -e "       calculer le nombre de touts les fichiers et le nombre de ceux qui finissent par ~ 
et calculer le pourcentage de ces derniers"
	echo -e "-s:"
	echo -e "       Sauvgarder ce pourcentage dans pourcentages.txt "
	echo -e "-help:"
	echo -e "       help"
	echo -e "													 																	COPYRIGHT ° B&F ° "
}
helps
