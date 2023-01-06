APACHE=$(dpkg-query -W -f='${Status}' apache2 2>/dev/null | grep -c 'ok installed')
if [ $APACHE -eq 0 ]; then

	echo "Paigaldame apache2"
	apt install apache2
	echo "Apache on paigaldatud"

elif [ $APACHE -eq 1 ]; then

	echo Apache2 on juba paigaldatud"
	service apache2 start
	service apache2 status

fi
