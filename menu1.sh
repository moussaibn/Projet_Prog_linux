#!/bin/bash
nom="Moussa Ndiaye"
menu1=$(dialog --title "Test Menu Dialog" --menu "Bonjour $nom\n
	Choisissez l'action a faire" 15 60 5 \
"1" "Installation de paquets" \
"2" "VOD:Video de Cours" \
"3" "Mathematique" \
"4" "Support de cours" \
"5" "Terminal"  3>&1 1>&2 2>&3)
 
exitstatus=$?
if [ $exitstatus = 0 ]; then
	clear
	case menu1 in
		1 )
			;;
		2 )$(./menuInstall.sh)
			;;
		3 )
			;;
		4 )
			;;
		5 )
			;;
	esac
else
    echo "You chose Cancel."
fi