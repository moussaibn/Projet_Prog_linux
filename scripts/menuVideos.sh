#!/bin/bash
nom="Moussa Ndiaye"
menu1=$(dialog --title "Videos de cours de package" --menu "Bonjour $nom\n
	Choisissez le cours a visualiser" 15 60 5 \
"1" "Video 1" \
"2" "Video 2" \
"3" "Video 3" \
"4" "Video 4" \
"5" "Video 5"  3>&1 1>&2 2>&3)

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
