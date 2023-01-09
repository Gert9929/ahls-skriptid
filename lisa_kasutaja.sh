#!/bin/bash

#Küsib userilt nime
echo -n "Sisesta kasutajanimi: "
read nimi

#echo -n "Sisesta parool: "
#stty -echo
#read parool
echo
#Loob kasutaja
useradd $nimi # -p $parool

#Teeb uue home kataloogi
mkdir /home/$nimi 

#useradd'ile tuleb manuaalselt lisada kõik sätted ja õigused samal ajal kui adduser teeb kõik automaatselt
