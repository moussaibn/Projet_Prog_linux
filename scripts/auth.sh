#!/bin/bash
login=""
mdpasse=""
# open fd
exec 3>&1
VALUES=$(dialog --ok-label "Connexion" \
	 		 	--backtitle "Copyright A.M.A.M. Plateforme UVS" \
	  			--title "Connexion" \
	  			--form "Connexion a la plateforme " \
				15 50 0 \
				"login:" 1 1	"$user" 	1 15 35 0 \
				"Mot de passe:"    2 1	"$mdpasse"  	2 15 35 0 \
				2>&1 1>&3)
# close fd
exec 3>&-
clear
# display values just entered
userLogin=$(echo $VALUES| cut -d " " -f1 )
userPasswd=$(echo $VALUES| cut -d " " -f2 )
echo $userLogin $userPasswd
# requete recherche utilisateur dans la bd ldap
ldapsearch -xLLL -D 'cn=admin,dc=uvs,dc=sn' uid=$userLogin -w passer >temp.txt

mdPasseCrypte=$(grep 'userPassword' temp.txt| cut -d " " -f2)
mdPasseClair=$(echo $mdPasseCrypte | base64 -d)
if test "$mdPasseClair" = "$userPasswd"
	then
		dialog --title "Succes authentification" \
	 	--backtitle "Copyright A.M.A.M. Plateforme UVS" \
		--yesno "Bonjour $userLogin  \n
				Voulez vous continuer ?" 7 60
		response=$?
				case $response in
		   			0)	clear
						chmod a+x menuPrincipal.sh
						./menuPrincipal.sh $userLogin
				    	;;

				   1) 	echo "Vous avez quitte l'application."
						echo "A la prochaine!!1";;
					255)
						echo "Vous avez quitte l'application."
						echo "A la prochaine!!1";;	
				esac
	else
		dialog --title "Echec de Connexion " \
	 	--backtitle "Copyright A.M.A.M. Plateforme UVS" \
		--yesno "Bonjour votre authentification a echoue \n
				Voulez vous reessayer?" 7 60

		response=$?
				case $response in
		   			0)	
						$(clear)
						./auth.sh
				    	;;
					1) 	echo "Vous avez quitte l'application."
						echo "A la prochaine!!1"
						;;
					255)
						echo "Vous avez quitte l'application."
						echo "A la prochaine!!"
						;;
				esac
fi