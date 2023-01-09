#!/bin/bash

echo -n "Sisesta kasutajanimi: "
read nimi
#echo -n "Sisesta parool: "
#stty -echo
#read parool
echo
useradd $nimi # -p $parool
mkdir /home/$nimi 
