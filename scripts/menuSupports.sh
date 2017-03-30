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
				$(xdg-open  http://localhost/Projet_Prog_linux-master/Ressources/Supports/Support1.pdf)
				$(./menuSupports.sh)
				;;
		2 )
				$(xdg-open  http://localhost/Projet_Prog_linux-master/Ressources/Supports/Support2.pdf)
				$(./menuSupports.sh)

				;;
		3 )
				$(xdg-open  http://localhost/Projet_Prog_linux-master/Ressources/Supports/Support3.pdf)
				$(./menuSupports.sh)

				;;
		4 )
				$(xdg-open  http://localhost/Projet_Prog_linux-master/Ressources/Supports/Support4.pdf)
				$(./menuSupports.sh)
				;;
		5 )
				$(xdg-open  http://localhost/Projet_Prog_linux-master/Ressources/Supports/Support5.pdf)
				$(./menuSupports.sh)
				;;
	esac
else
		$(./menu1.sh)
fi
