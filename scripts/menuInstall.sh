#!/bin/bash
nom="Moussa Ndiaye"
menu1=$(dialog --title "Installation de package" --menu "Bonjour $nom\n
	Choisissez le packet a installer" 15 60 5 \
"1" "Google Chrome" \
"2" "VLC Media Player" \
"3" "Python" \
"4" "Sublime text" \
"5" "Autre package"  3>&1 1>&2 2>&3)

exitstatus=$?
if [ $exitstatus = 0 ]; then
	clear
	# case menu1 in
	# 	1 )
	# 			$(apt-get inslall)
	# 			;;
	# 	2 )
	# 			$(./menuVideos.sh)
	# 			;;
	# 	3 )
	# 			$(./maths.sh)
	# 			;;
	# 	4 )
	# 			$(./menuSupports.sh)
	# 			;;
	# 	5 )
	# 			$(./terminal.sh)
	# 			;;
	esac
else
    echo "You chose Cancel."
fi
