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
				$(xdg-open  http://localhost/Projet_Prog_linux-master/Ressources/Videos/Video1.mp4)
				$(./menuVideos.sh)
				;;
		2 )
				$(xdg-open  http://localhost/Projet_Prog_linux-master/Ressources/Videos/Video2.mp4)
				$(./menuVideos.sh)
				;;
		3 )
				$(xdg-open  http://localhost/Projet_Prog_linux-master/Ressources/Videos/Video3.mp4)
				$(./menuVideos.sh)
				;;
		4 )
				$(xdg-open  http://localhost/Projet_Prog_linux-master/Ressources/Videos/Video4.mp4)
				$(./menuVideos.sh)
				;;
		5 )
				$(xdg-open  http://localhost/Projet_Prog_linux-master/Ressources/Videos/Video5.mp4)
				$(./menuVideos.sh)
				;;
	esac
else
		$(./menu1.sh)
fi
