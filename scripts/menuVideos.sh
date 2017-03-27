#!/bin/bash
nom="Moussa Ndiaye"
video=$(dialog --cancel-label "Retour" --title "Videos de cours de package" --menu "Bonjour $nom\n
	Choisissez le cours a visualiser" 15 60 5 \
"1" "Video 1" \
"2" "Video 2" \
"3" "Video 3" \
"4" "Video 4" \
"5" "Video 5"  3>&1 1>&2 2>&3)

exitstatus=$?
if [ $exitstatus = 0 ]; then
	clear
	case $video in
		1 )
				echo "apt-get inslall chromium"
				;;
		2 )
				echo "apt-get inslall chromium"
				;;
		3 )
				echo "apt-get inslall chromium"
				;;
		4 )
				echo "apt-get inslall chromium"
				;;
		5 )
				echo "apt-get inslall chromium"
				;;
	esac
else
		$(./menu1.sh)
fi
