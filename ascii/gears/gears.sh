gears_anim () {
#police Chunky
echo -e "\e[93m"
while :; do
	for (( i=0; i<4; i++ )); do
		cat lol_$i
		sleep 0.3
		echo -en "\033[12A"
		for (( j=0; j<12; j++ )); do
		 echo -e "\r\033[K"
		done
		echo -en "\033[12A"
	done
done
}

gears_anim & MYSQL_PID=$!
sleep 30
kill $MYSQL_PID
wait $MYSQL_PID 2> /dev/null
echo -en "\033[12A"
for (( j=0; j<12; j++ )); do
 echo -e "\r\033[K"
done
echo -en "\033[12A"
