#!/bin/bash
echo -n "Sisesta user kelle home kataloogi soovid backupida: "
read user
echo -n "Sisesta kaust mida backupida: "
read lahtekaust
echo -n "Sisesta kaust kuhu soovid backupida: "
read  sihtkaust

#user="user"
#lahtekaust=/home/user
#sihtkaust="/root/ahls/backupid"

#Saame kuupäeva õiges formaadis
kuupaev=$(date +"%d.%m.%y")
echo $kuupaev

for filename in $(ls $lahtekaust); do
	echo "$filename"
	if [[ -d $filename ]]; then
		echo "DIR --------------------------"
		#Teeb arhiivi lahtekausta
		tar -czf $sihtkaust/$filename.$kuupaev.tar.gz  $lahtekaust
	else
		echo "other"
	fi
done
