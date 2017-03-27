#!/bin/bash
nom="Moussa Ndiaye"
support=$(dialog --cancel-label "Retour" --title "Support de cours " --menu "Bonjour $nom\n
	Choisissez le SupportP a visualiser" 15 60 5 \
"1" "Support 1" \
"2" "Support 2" \
"3" "Support 3" \
"4" "Support 4" \
"5" "Support 5"  3>&1 1>&2 2>&3)

exitstatus=$?
if [ $exitstatus = 0 ]; then
	clear
	case $support in
		1 )
				echo "Ouvrir Support 1"
				;;
		2 )
				echo "Ouvrir Support 2"
				;;
		3 )
				echo "Ouvrir Support 3"
				;;
		4 )
				echo "Ouvrir Support 4"
				;;
		5 )
				echo "Ouvrir Support 5"
				;;
	esac
else
		$(./menu1.sh)
fi
