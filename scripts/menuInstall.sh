#!/bin/bash
nom="Moussa Ndiaye"
installer=$(dialog --cancel-label "Retour" --title "Installation de package" --menu "Bonjour $nom\n
	Choisissez le packet a installer" 15 60 5 \
"1" "Google Chrome" \
"2" "VLC Media Player" \
"3" "Python" \
"4" "Sublime text" \
"5" "Autre package"  3>&1 1>&2 2>&3)

exitstatus=$?
if [ $exitstatus = 0 ]; then
	clear
	case $installer in
		1 )
				echo "apt-get inslall chromium"
				# $(apt-get inslall )
				;;
		2 )
				echo "apt-get inslall chromium"
				# $(apt-get inslall )
				;;
		3 )
				echo "apt-get inslall chromium"
				# $(apt-get inslall )
				;;
		4 )
				echo "apt-get inslall chromium"
				# $(apt-get inslall )$(./menuSupports.sh)
				;;
		5 )
				echo "apt-get inslall chromium"
				# $(apt-get inslall )$(./terminal.sh)
				;;
	esac
else
		$(./menu1.sh)
fi
