PMA=$(dpkg-query -W -f='${Status}' phpmyadmin 2>/dev/null | grep -c 'ok installed')

if [ $PMA -eq 0 ]; then

	echo "Paigaldame phpmyadmin ja vajalikud lisad"
	apt install phpmyadmin
	echo "Phpmyadmin on paigaldatud"

elif [ $PMA -eq 0 ]; then

	echo "Phpmyadmin on juba paigaldatud"

fi
