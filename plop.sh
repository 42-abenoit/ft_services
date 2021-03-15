. ./install_scripts/prints.fn

#🗹
echo -e "\033[032m\U1f5f8\033[0m"

echo -en "\033[036m\U1f135\033[0m "
echo -en "\033[036m\U1f143\033[0m  "
echo -en "\033[036m\U1f142\033[0m "
echo -en "\033[036m\U1f134\033[0m "
echo -en "\033[036m\U1f141\033[0m "
echo -en "\033[036m\U1f145\033[0m "
echo -en "\033[036m\U1f138\033[0m "
echo -en "\033[036m\U1f132\033[0m "
echo -en "\033[036m\U1f134\033[0m "
echo -en "\033[036m\U1f142\033[0m "

progress_anim & WPID=$!
sleep 5
kill $WPID >/dev/null 2>/dev/null
wait $WPID >/dev/null 2>/dev/null

echo "http://192.168.49.3"
