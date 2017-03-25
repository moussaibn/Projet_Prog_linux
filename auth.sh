#!/bin/bash
login=""
mdpasse=""
# open fd
exec 3>&1
VALUES=$(dialog --ok-label "Connexion" \
	  --backtitle "Linux User Managment" \
	  --title "Connexion" \
	  --form "Connexion a la plateforme " \
15 50 0 \
	"login:" 1 1	"$user" 	1 15 35 0 \
	"Mot de passe:"    2 1	"$mdpasse"  	2 15 35 0 \
2>&1 1>&3)

# close fd
exec 3>&-
$(echo $VALUES>donnees.txt)
# display values just entered
mlogin=$(echo $VALUES| cut -d " " -f1 )
dpasse=$(echo $VALUES| cut -d " " -f2 )

echo "LOGIN :" $mlogin
