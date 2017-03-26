#!/bin/bash
nom="Moussa Ndiaye"
menu1=$(dialog --title "Support de cours " --menu "Bonjour $nom\n
	Choisissez le SupportP a visualiser" 15 60 5 \
"1" "Support 1" \
"2" "Support 2" \
"3" "Support 3" \
"4" "Support 4" \
"5" "Support 5"  3>&1 1>&2 2>&3)

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
