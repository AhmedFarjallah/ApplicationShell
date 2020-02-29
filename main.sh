#!/bin/bash




main(){



	case $1 in
		"-search")
			echo -e "options (-search):\n"
			source search.sh
			search $2
			;;
		"-week")
			echo -e "options (-week):\n"
			source week.sh
			;;
		"-before-eek")
			echo -e "options (-before-week):\n"
			source before_week.sh 	
			;;
		"-per")
			echo -e "options (-per):\n"
			source per.sh 	
			;;
		"-tmp")
			echo -e "options (-tmp):\n"
			source tmp.sh	
			;;
		"-s")
			echo -e "options (-s):\n"
			source sauvgarder.sh 	
			;;
		"-G")
			echo -e "options (-G):\n"
			source graphique.sh 	
			;;
		"-h" | "-help")
			echo -e "options (-help | -h):\n"
			source help.sh	
			;;
		*)
			echo -e "Error rien a etait entrer\n"
			;;
	

	esac

}

main $1 $2  
