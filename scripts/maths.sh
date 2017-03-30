#!/bin/bash


str=$(\
dialog --title "Calculatrice" \
--inputbox "Veuillez entrer l'opération a effectuer:" 10 2 \
3>&1 1>&2 2>&3 3>&- \
)
choix=$?
case $choix in
	0)
		if [[ $str == *"+"* ]]
			then
			IFS='+'	read -a valeurs <<< "$str"
			resultat=$((${valeurs[0]}+${valeurs[1]}))

		elif [[ $str == *"-"* ]]
			then
			IFS='-'	read -a valeurs <<< "$str"
			resultat=$((${valeurs[0]}-${valeurs[1]}))

		elif [[ $str == *"/"* ]]
			then
			IFS='/'	read -a valeurs <<< "$str"
			resultat=$((${valeurs[0]}/${valeurs[1]}))

		elif [[ $str == *"*"* ]]
			then
			IFS='*'	read -a valeurs <<< "$str"
			resultat=$((${valeurs[0]}*${valeurs[1]}))
		else
			echo opération non valide

		fi
		rs=$(
		dialog --msgbox "Le résultat est $resultat" 5 30 \
		3>&1 1>&2 2>&3 3>&-\
		 )
		$(./maths.sh)				
				;;
		1)
			$(bash menu1.sh)
			;;
esac 


