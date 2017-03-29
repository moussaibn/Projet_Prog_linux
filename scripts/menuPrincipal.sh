#!/bin/bash
nom="Moussa Ndiaye"
menu1=$(dialog --cancel-label "Quitter" --title "Test Menu Dialog" --menu "Bonjour $nom\n
	Choisissez l'action a faire" 15 60 5 \
"1" "Installation de paquets" \
"2" "VOD:Video de Cours" \
"3" "Mathematique" \
"4" "Support de cours" \
"5" "Terminal"  3>&1 1>&2 2>&3)

exitstatus=$?
if [ $exitstatus = 0 ]; then
	clear
	echo $menu1
	case $menu1 in
		1 )
				$(chmod a+x menuInstall.sh)
				./menuInstall.sh
				;;
		2 )
				$(chmod a+x menuVideos.sh)
				$(./menuVideos.sh)
				;;
		3 )
				$(chmod a+x maths.sh)
				$(./maths.sh)
				;;
		4 )
				$(chmod a+x menuSupports.sh)
				$(./menuSupports.sh)
				;;
		5 )
				$(chmod a+x terminal.sh)
				$(./terminal.sh)
				;;
	esac
else
    echo "You chose Cancel."
fi
