gears_anim () {
#police Chunky
echo -e "\e[93m"
while :; do
	for (( i=0; i<2; i++ )); do
		cat lol_$i
		sleep 0.4
		echo -en "\033[16A"
		for (( j=0; j<16; j++ )); do
		 echo -e "\r\033[K"
		done
		echo -en "\033[16A"
	done
done
}

gears_anim & MYSQL_PID=$!
sleep 5
kill $MYSQL_PID
wait $MYSQL_PID 2> /dev/null
echo -en "\033[16A"
for (( j=0; j<16; j++ )); do
 echo -e "\r\033[K"
done
echo -en "\033[16A"
