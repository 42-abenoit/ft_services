cmp=$(ps | grep mariadb | wc -l)
while [ $scmp -lt 3 ]
do
cmp=$(ps | grep mariadb | wc -l)
echo 1
done
