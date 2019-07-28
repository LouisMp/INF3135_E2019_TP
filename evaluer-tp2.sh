#!/bin/bash
# evaluer-tp2.sh
if [ -z $1 ]
then
  correction=inf3135-e2019-tp1.correction
else
  correction=$1
fi
if [ ! -f ${correction} ] ; then
  wget -q -nc https://github.com/guyfrancoeur/INF3135_E2019_TP/raw/master/${correction} -O ${correction}
  # -nc est no-clobber, ne telecharge pas le fichier s'il existe.
fi
if [ ! -f ${correction} ]
then
  echo "erreur fatale, fichier correction inexistant."
  exit 1
fi
old_IFS=$IFS # sauvegarde du séparateur de champ 
IFS=$'\n' # nouveau séparateur de champ, le caractère fin de ligne
nbr=1
note=0
for line in `cat ${correction}`
do
  points=$(echo $line | cut -d ' ' -f 1)
  temps=$(echo $line |  cut -d ' ' -f 2)
  retour=$(echo $line |  cut -d ' ' -f 3)
  cmd=$(echo $line | cut -c 30- | sed 's/\/depot\/crypto-tp1\/crypto-msg0/\/inf3135-e2019-tp1\/crypto-tp1\/crypto-msg0/g')
if [ $temps -eq 00 ]; then
  eval $cmd
else
	eval timeout $temps $cmd
fi
if [ $(echo $?) -eq $retour ]; then
 echo "${nbr} : reussi ${points} pts"
note=$((note + points))
  else
   echo "${nbr} : echec"
 fi
nbr=$((nbr + 1))
done
echo "Note (total) pour $(cat cp.txt) dans inf3135-e2019-tp1: ${note}"
echo "$(cat cp.txt)	${note}"
IFS=$old_IFS # rétablissement du séparateur de champ par défaut
