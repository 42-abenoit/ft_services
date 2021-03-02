m1=$(cat mysql)
m2=$(cat mysql.)
m3=$(cat mysql..)
m4=$(cat mysql...)

tab="$m1;$m2;$m4;$m4"

#echo -e "\e[32m $(cat mysql) \e[0m"

while :; do
	for (( i=0; i<4; i++ )); do
		cur=$(cat txt$i)
		print $cur
	sleep 0.5
		for (( j=0; j<${#cur}; j++ )); do
			echo -en "\r"
		done
	done
done
