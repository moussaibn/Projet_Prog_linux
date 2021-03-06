#!/bin/bash
nom="Moussa Ndiaye"
choix=$(dialog --cancel-label "Quitter" --title "Test Menu Dialog" --menu "Bonjour $nom\n
	Choisissez l'action a faire" 15 60 5 \
"1" "Installation de paquets" \
"2" "VOD:Video de Cours" \
"3" "Mathematique" \
"4" "Support de cours" \
"5" "Terminal"  3>&1 1>&2 2>&3)

exitstatus=$?
if [ $exitstatus = 0 ]; then
	clear
	case $choix in
		1 )
				$(chmod a+x menuInstall.sh)
				./menuInstall.sh
				./menuPrincipal.sh
				;;
		2 )
				$(chmod a+x menuVideos.sh)
				$(./menuVideos.sh)
				./menuPrincipal.sh
				;;
		3 )
				$(chmod a+x maths.sh)
				$(./maths.sh)
				./menuPrincipal.sh
				;;
		4 )
				$(chmod a+x menuSupports.sh)
				$(./menuSupports.sh)
				./menuPrincipal.sh
				;;
		5 )
				$(chmod a+x terminal.sh)
				$(./terminal.sh)
				;;
	esac
else
    echo "You chose Cancel."
fi
