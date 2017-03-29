#!/bin/bash
nom="Moussa Ndiaye"
installer=$(dialog --cancel-label "Retour" --title "Installation de package" --menu "Bonjour $nom\n
	Choisissez le packet a installer" 15 60 5 \
"1" "Google Chrome" \
"2" "Kannel" \
"3" "D.N.S." \
"4" "				sudo apt-get install apache2 php5" \
"5" "Autre package"  3>&1 1>&2 2>&3)

exitstatus=$?
if [ $exitstatus = 0 ]; then
	clear
	case $installer in
		1 )
				echo "apt-get inslall chromium"
				;;
		2 )
				echo "sudo apt-get install kannel"
				;;
		3 )
				echo "sudo apt-get install bind9 dnsutils"
				;;
		4 )
				echo "sudo apt-get install apache2 php5"
				;;
		* )
				echo "apt-get inslall "$installer
				;;
	esac
else
		$(./menu1.sh)
fi
