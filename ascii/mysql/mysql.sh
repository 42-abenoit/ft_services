mysql_anim () {
#police Chunky
echo -e "\e[93m"
while :; do
	for (( i=0; i<4; i++ )); do
		cat mysql_$i.ascii
		sleep 0.2
		echo -en "\033[5A"
		echo -e "\r\033[K"
		echo -e "\r\033[K"
		echo -e "\r\033[K"
		echo -e "\r\033[K"
		echo -e "\r\033[K"
		echo -en "\033[5A"
	done
done
}

mysql_anim & MYSQL_PID=$!
sleep 3
kill $MYSQL_PID
wait $MYSQL_PID 2> /dev/null
echo -en "\033[5A"
echo -e "\r\033[K"
echo -e "\r\033[K"
echo -e "\r\033[K"
echo -e "\r\033[K"
echo -e "\r\033[K"
echo -en "\033[5A"

echo -en "\e[32m"
cat print_done
echo -e "\e[0m"

echo -en "\e[31m"
cat print_fail
echo -e "\e[0m"
